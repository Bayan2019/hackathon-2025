package main

import (
	"fmt"
	"log"
	"os"

	"github.com/joho/godotenv"
)

// @title POLICE API
// @version 1.0
// @description This is a sample server POLICE.
// @termsOfService http://swagger.io/terms/

// @contact.name API Support
// @contact.url http://www.swagger.io/support
// @contact.email support@swagger.io

// @license.name Apache 2.0
// @license.url http://www.apache.org/licenses/LICENSE-2.0.html

// @host petstore.swagger.io
// @BasePath /v2

// @securityDefinitions.apikey Bearer
// @in header
// @name Authorization
// @description Type "Bearer" followed by a space and JWT token.
func main() {
	err := godotenv.Load(".env")
	if err != nil {
		fmt.Printf("warning: assuming default configuration. .env unreadable: %v\n", err)
	}

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}

	dbURL := os.Getenv("DATABASE_URL")
	// fmt.Println(dbURL)
	err = configuration.Connect2DB(dbURL)
	if err != nil {
		log.Println("DATABASE_URL environment variable is not set")
		log.Println("Running without CRUD endpoints")
		fmt.Println(err.Error())
	}
}
