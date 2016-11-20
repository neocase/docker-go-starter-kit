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

	router.GET("/dbping", func(c *gin.Context) {
		db, err := sql.Open("postgres", "host=postgres port=5432 user=neo_user dbname=neo_db")
		if err != nil {
			log.Fatal(err)
		}
		defer db.Close()
		err = db.Ping()
		dbStats := db.Stats()
		if err != nil {
			c.String(http.StatusOK, "hotstName : %s\nDbStatus : %s", os.Getenv("HOSTNAME"), err)
		}
		c.String(http.StatusOK, "\nhotstName : %s\nDbStatus :db good\ndb stats : %d", os.Getenv("HOSTNAME"), dbStats.OpenConnections)
	})

	router.Run(":" + port)
}
