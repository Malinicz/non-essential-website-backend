package dbrepo

import (
	"context"
	"database/sql"
	"non-essential-backend/internal/models"
	"time"
)

type PostgresDBRepo struct {
	DB *sql.DB 
}

const dbTimeout = time.Second * 3

func (m *PostgresDBRepo) Connection() *sql.DB {
	return m.DB
}

func (m *PostgresDBRepo) AllFans() ([]*models.Fan, error) {
	ctx, cancel := context.WithTimeout(context.Background(), dbTimeout)
	defer cancel()

	query := `
		select
			id, email, created_at, updated_at
		from
			fans
		order by
			created_at
	`

	rows, err := m.DB.QueryContext(ctx, query)

	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var fans []*models.Fan

	for rows.Next() {
		var fan models.Fan
		err := rows.Scan(
			&fan.ID,
			&fan.Email,
			&fan.CreatedAt,
			&fan.UpdatedAt,
		)

		if err != nil {
			return nil, err
		}

		fans = append(fans, &fan)
	}

	return fans, nil
}