// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.28.0

package database

import (
	"database/sql"
	"time"
)

type Center struct {
	ID      int64
	Address string
}

type Communication struct {
	ID      int64
	FromID  int64
	ToID    int64
	SendAt  time.Time
	Message string
	Type    string
}

type File struct {
	ID        string
	CreatedAt string
	UpdatedAt string
}

type FilesReport struct {
	AddedAt  time.Time
	FileID   string
	ReportID int64
}

type Notification struct {
	ID   int64
	Note string
}

type Operator struct {
	ID       int64
	BeginAt  string
	EndAt    string
	PoliceID int64
	CenterID int64
}

type RefreshToken struct {
	Token     string
	CreatedAt string
	UpdatedAt string
	UserID    int64
	ExpiresAt string
	RevokedAt sql.NullString
}

type Report struct {
	ID          int64
	Description string
	Location    string
	Date        string
}

type Role struct {
	ID    int64
	Title string
}

type User struct {
	ID              int64
	CreatedAt       string
	UpdatedAt       string
	Name            string
	Iin             string
	Phone           string
	DateOfBirth     string
	PasswordHash    string
	CurrentLocation string
}

type UsersRole struct {
	AddedAt time.Time
	UserID  int64
	RoleID  int64
}
