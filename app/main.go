package main

import (
	"database/sql"
	"log"
	"net/http"
	"os"

	"github.com/gin-gonic/gin"
	_ "github.com/lib/pq"
)

func main() {
	port := os.Getenv("PORT")
	router := gin.New()
	router.Use(gin.Logger())
	router.LoadHTMLGlob("templates/*.tmpl.html")
	router.Static("/static", "static")

	router.GET("/", func(c *gin.Context) {
		c.HTML(http.StatusOK, "index.tmpl.html", nil)
	})

	router.GET("/db", func(c *gin.Context) {
		db, err := sql.Open("postgres", "host=postgres port=5432 user=docker dbname=docker password=docker sslmode=disable")
		if err != nil {
			log.Fatal("Error: The data source arguments are not valid - " + err.Error())
		}
		err = db.Ping()
		
		if err != nil {
			log.Println("Error: Could not establish a connection with the database")
			c.String(http.StatusOK, "hotstName : %s\nDbStatus : %s", os.Getenv("HOSTNAME"), err)
		} else {
			c.String(http.StatusOK, "\nhotstName : %s\nDbStatus : connection ok !\n", os.Getenv("HOSTNAME"))
		}
		defer db.Close()
	})

	router.Run(":" + port)
}
