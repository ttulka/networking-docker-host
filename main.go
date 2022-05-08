package main

import (
	"fmt"
	"log"
	"net/http"
)

func hello(w http.ResponseWriter, req *http.Request) {
	fmt.Fprintf(w, "hello\n")
}

func main() {
	http.HandleFunc("/", hello)

	port := ":8080"
	log.Println("Listening on", port)
	log.Fatal(http.ListenAndServe(port, nil))
}
