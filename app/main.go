package main
import "fmt"

import (
        "net/http"
)

func main() {
	fmt.Println("Hello World!")
        http.Handle("/", http.FileServer(http.Dir("./static")))
        http.ListenAndServe(":3000", nil)
}