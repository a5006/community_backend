package main

import (
	"os"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	r.GET("/", func(ctx *gin.Context) {
		ctx.JSON(200, gin.H{
			"message": "响应值22",
			"version": os.Getenv("VERSION"),
		})
	})
	r.Run(":2333")
}
