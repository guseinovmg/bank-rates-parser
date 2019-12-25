package main

import (
	"database/sql"
	_ "github.com/lib/pq"
	"log"
	"sync"
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
	banksChan := make(chan Bank)
	const routinesCount = 5
	var done sync.WaitGroup
	if routinesCount < len(banks) {
		done.Add(routinesCount)
	} else {
		done.Add(len(banks))
	}
	for i := 1; i <= routinesCount; i++ {
		go Fetch(banksChan, done, db)
	}
	for _, bank := range banks {
		banksChan <- bank
	}
	close(banksChan)
	done.Wait()
}
