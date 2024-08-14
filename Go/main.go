package main

import (
	"fmt"
	"time"
)

func main() {
	tomorrow := time.Now().AddDate(0, 0, 1)
	fmt.Printf("%sから本気出す\n", tomorrow.Format("01/02"))
}
