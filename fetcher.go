package main

import (
	"crypto/tls"
	"errors"
	"fmt"
	"io/ioutil"
	"math"
	"net/http"
	urler "net/url"
	"regexp"
	"strconv"
	"strings"
	"time"
)
import "github.com/guseinovmg/goquery"

type Rate struct {
	currency string
	buy      float64
	sell     float64
}

var floatReg = regexp.MustCompile(`\d+([.,]\d+)?`)

func ParseFloat(str string) float64 {
	str = strings.Replace(str, ",", ".", 5)
	num, _ := strconv.ParseFloat(string(str), 64)
	return num
}

var tr = &http.Transport{
	TLSClientConfig: &tls.Config{InsecureSkipVerify: true},
	IdleConnTimeout: 10 * time.Second,
	MaxIdleConns:    150,
}

var client = &http.Client{Transport: tr}

func getFile(host string) (page string, err error) {
	buf, err := ioutil.ReadFile("./pages/" + host + ".html")
	if err != nil {
		return "", err
	}
	return string(buf), nil
}

func Request(url string) (page string, err error) {
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

func GetPages(url string, depth int, result *map[string]string) {
	time.Sleep(time.Millisecond * 300)
	page, err := Request(url)
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
		GetPages(href, depth-1, result)
	})
}

func Parse(page string, ignoreCurrency string) ([]Rate, error) {
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
			buy := ParseFloat(numericStrings[0])
			sell := ParseFloat(numericStrings[1])
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

type currencyNames struct {
	name          string
	searchStrings []string
}

var currencyTypes = []currencyNames{
	currencyNames{name: "USD", searchStrings: []string{"$", "usd", "us dollar", "доллар сша", "доллары сша"}},
	currencyNames{name: "EUR", searchStrings: []string{"€", "eur", "евро"}},
	currencyNames{name: "RUB", searchStrings: []string{"₽", "rub", "rur", "ruble", "рубль"}},
	currencyNames{name: "KZT", searchStrings: []string{"₸", "kzt", "тенге"}},
	currencyNames{name: "INR", searchStrings: []string{"₹", "inr", "indian rupee"}},
	currencyNames{name: "KRW", searchStrings: []string{"₩", "krw", "won"}},
	currencyNames{name: "GBP", searchStrings: []string{"£", "gbr", "pound", "фунт"}},
	currencyNames{name: "BRL", searchStrings: []string{"brl"}},
	currencyNames{name: "CNY", searchStrings: []string{"cny", "yuan", "юань"}},
	currencyNames{name: "IDR", searchStrings: []string{"idr"}},
	currencyNames{name: "TRY", searchStrings: []string{"₺", "try", "турецкая лира"}},
	currencyNames{name: "CHF", searchStrings: []string{"chf", "швейцарский франк"}},
	currencyNames{name: "JPY", searchStrings: []string{"jpy", "yen", "иена"}},
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
