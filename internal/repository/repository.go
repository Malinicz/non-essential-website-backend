package repository

import (
	"database/sql"
	"non-essential-backend/internal/models"
)

type DatabaseRepo interface {
	Connection() *sql.DB
	AllFans() ([]*models.Fan, error)
}