package main

import (
	"database/sql"
	"fmt"
	_ "github.com/lib/pq"
	"log"
	"time"
)

type Bank struct {
	id           int
	host         string
	name         string
	website      string
	currencyCode string
}

func main() {
	connStr := "postgres://postgres:password@localhost:5432/postgres"
	db, err := sql.Open("postgres", connStr)
	if err != nil {
		log.Fatal(err)
	}
	tb, err := db.Query("select id,host,name,website,currency_code from public.banks where enabled")
	if err != nil {
		log.Fatal(err)
	}
	banks := make([]Bank, 0)
	for tb.Next() {
		var b Bank
		_ = tb.Scan(&b.id, &b.host, &b.name, &b.website, &b.currencyCode)
		banks = append(banks, b)
	}
	for _, bank := range banks {
		fmt.Print(bank.host)
		var rates []Rate
		pages := make(map[string]string)
		GetPages(bank.website, 2, &pages)
		fmt.Print(len(pages))
		for _, page := range pages {
			rt, err := Parse(page, bank.currencyCode)
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
}
