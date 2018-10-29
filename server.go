package main

import (
	"fmt"
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", homeHandler)
	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}
	http.ListenAndServe(":"+port, nil)
}

func homeHandler(w http.ResponseWriter, req *http.Request) {
	fmt.Fprint(w, "Go app for test docker")
}
