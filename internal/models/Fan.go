package models

import "time"

type Fan struct {
	ID int `json:"id"`
	Email string `json:"email"`
	CreatedAt time.Time `json:"-"`
	UpdatedAt time.Time `json:"-"`
}