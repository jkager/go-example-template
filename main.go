package main

import (
	"fmt"
	"github.com/kelseyhightower/envconfig"
	"log"
)

type config struct {
	Test string
}

func main() {
	var c config
	err := envconfig.Process("", &c)
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println(c.Test)
}
