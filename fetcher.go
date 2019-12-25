package main

import (
	"crypto/tls"
	"database/sql"
	"errors"
	"fmt"
	"github.com/guseinovmg/goquery"
	"io/ioutil"
	"math"
	"net/http"
	urler "net/url"
	"regexp"
	"strconv"
	"strings"
	"sync"
	"time"
)

type Rate struct {
	currency string
	buy      float64
	sell     float64
}

type currencyNames struct {
	name          string
	searchStrings []string
}

var floatReg = regexp.MustCompile(`\d+([.,]\d+)?`)

var tr = &http.Transport{
	TLSClientConfig: &tls.Config{InsecureSkipVerify: true},
	IdleConnTimeout: 10 * time.Second,
	MaxIdleConns:    150,
}

var client = &http.Client{Transport: tr}

var currencyTypes = []currencyNames{
	{name: "USD", searchStrings: []string{"$", "usd", "us dollar", "доллар сша", "доллары сша"}},
	{name: "EUR", searchStrings: []string{"€", "eur", "евро"}},
	{name: "RUB", searchStrings: []string{"₽", "rub", "rur", "ruble", "рубль"}},
	{name: "KZT", searchStrings: []string{"₸", "kzt", "тенге"}},
	{name: "INR", searchStrings: []string{"₹", "inr", "indian rupee"}},
	{name: "KRW", searchStrings: []string{"₩", "krw", "won"}},
	{name: "GBP", searchStrings: []string{"£", "gbr", "pound", "фунт"}},
	{name: "BRL", searchStrings: []string{"brl"}},
	{name: "CNY", searchStrings: []string{"cny", "yuan", "юань"}},
	{name: "IDR", searchStrings: []string{"idr"}},
	{name: "TRY", searchStrings: []string{"₺", "try", "турецкая лира"}},
	{name: "CHF", searchStrings: []string{"chf", "швейцарский франк"}},
	{name: "JPY", searchStrings: []string{"jpy", "yen", "иена"}},
}

func Fetch(banks chan Bank, done sync.WaitGroup, db *sql.DB) {
	for bank := range banks {
		fmt.Print(bank.host)
		var rates []Rate
		pages := make(map[string]string)
		getPages(bank.website, 2, &pages)
		fmt.Print(len(pages))
		for _, page := range pages {
			rt, err := parse(page, bank.currencyCode)
			fmt.Println(rt)
			if err == nil {
				rates = append(rates, rt...)
			} else {
				fmt.Print(err)
			}
		}
		fmt.Print(rates, "\n")
		if len(rates) > 0 {
			now := time.Now()
			for _, rate := range rates {
				_, _ = db.Exec(`insert into rates (bank_id, foreign_currency, base_currency, buy_rate, sell_rate, created_on)
				values ($1, $2, $3, $4, $5, $6);`, bank.id, rate.currency, bank.currencyCode, rate.buy, rate.sell, now)
			}
		}
	}
	done.Done()
}

func request(url string) (page string, err error) {
	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return "", err
	}
	req.Header.Add("User-Agent", `Mozilla/5.0 (Linux; Android 8.0.0; SM-G960F Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36"`)
	res, err := client.Do(req)
	if err != nil {
		return "", err
	}
	defer func() {
		_ = res.Body.Close()
		if panica := recover(); panica != nil {
			page = ""
			err = errors.New("Panica in request")
		}
	}()
	body, err := ioutil.ReadAll(res.Body)
	if err != nil {
		return "", err
	}
	page = string(body)
	return page, nil
}

func getPages(url string, depth int, result *map[string]string) {
	time.Sleep(time.Millisecond * 300)
	page, err := request(url)
	if err != nil {
		return
	}
	d, err := goquery.NewDocumentFromReader(strings.NewReader(page))
	if err != nil {
		fmt.Println(err)
		return
	}
	(*result)[url] = page
	if depth == 0 {
		return
	}
	host, err := urler.Parse(url)
	if err != nil {
		fmt.Println(err)
		return
	}
	d.Find("a").Each(func(i int, selection *goquery.Selection) {
		href, ok := selection.Attr("href")
		if !ok || (*result)[href] != "" || strings.HasSuffix(href, ".pdf") {
			return
		}
		_, err := urler.Parse(url)
		if err != nil {
			fmt.Println(err)

		}
		if !strings.Contains(href, host.Hostname()) {
			if err == nil {
				return
			}
			href = "https://" + host.Hostname() + href
		}
		getPages(href, depth-1, result)
	})
}

func parse(page string, ignoreCurrency string) ([]Rate, error) {
	page = strings.ToLower(page)
	page = strings.ReplaceAll(page, "</td>", " </td>")
	page = strings.ReplaceAll(page, "</th>", " </th>")
	page = strings.ReplaceAll(page, "</div>", " </div>")
	page = strings.ReplaceAll(page, "</span>", " </span>")
	d, err := goquery.NewDocumentFromReader(strings.NewReader(page))
	if err != nil {
		return []Rate{}, err
	}
	var result = make([]Rate, 0, 20)
	getRates := func(i int, s *goquery.Selection) {
		sText := s.Text()
		if len(sText) > 200 {
			return
		}
		numericStrings := floatReg.FindAllString(sText, 3)
		if len(numericStrings) == 2 {
			buy := parseFloat(numericStrings[0])
			sell := parseFloat(numericStrings[1])
			if math.Abs(buy-sell)/(buy+sell) > 0.1 {
				return
			}
			if buy > sell {
				buy, sell = sell, buy
			}
			var foundCurrencies = findCurrencies(sText, ignoreCurrency)
			if len(foundCurrencies) == 1 {
				rate := Rate{currency: foundCurrencies[0], buy: buy, sell: sell}
				result = append(result, rate)
			}
		}
	}
	d.Find("tr").Each(getRates)
	if len(result) == 0 {
		d.Find("div").Each(getRates)
	}
	return result, nil
}

func findCurrencies(str string, ignoreCurrency string) []string {
	result := make([]string, 0, 12)
	for _, t := range currencyTypes {
		if t.name == ignoreCurrency {
			continue
		}
		for _, ss := range t.searchStrings {
			if strings.Contains(str, ss) {
				result = append(result, t.name)
				continue
			}
		}
	}
	return result
}

func parseFloat(str string) float64 {
	str = strings.Replace(str, ",", ".", 5)
	num, _ := strconv.ParseFloat(string(str), 64)
	return num
}
