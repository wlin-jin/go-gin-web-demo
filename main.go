package main

import (
	"github.com/wlin-jin/go-gin-web-demo/route"

	_ "github.com/jinzhu/gorm/dialects/mysql"
)

func main() {
	router := route.InitRouter()
	router.Run("0.0.0.0:" + "8000")
}