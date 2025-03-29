package views

import "github.com/Bayan2019/hackathon-2025/repositories/database"

type User struct {
	Id   int64  `json:"id"`
	Name string `json:"name"`
	// Email       string          `json:"email"`
	DateOfBirth string          `json:"date_of_birth"`
	Phone       string          `json:"phone"`
	Roles       []database.Role `json:"roles"`
}

type SignInRequest struct {
	Phone    string `json:"phone"`
	Password string `json:"password"`
}

type TokensResponse struct {
	AccessToken  string `json:"access_token"`
	RefreshToken string `json:"refresh_token"`
}
