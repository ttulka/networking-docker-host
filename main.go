package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

var msg string = ""

func hello(w http.ResponseWriter, req *http.Request) {
	fmt.Fprintf(w, "hello %s\n", msg)
}

func main() {
	msg = os.Getenv("MESSAGE")

	http.HandleFunc("/", hello)

	port := ":8080"
	log.Println("Listening on", port)
	log.Fatal(http.ListenAndServe(port, nil))
}
