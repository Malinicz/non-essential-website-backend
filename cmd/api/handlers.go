package main

import (
	"net/http"
)

func (app *application) AllFans(w http.ResponseWriter, r *http.Request) {
	emails, err := app.DB.AllFans()

	if err != nil {
		app.errorJSON(w, err)
		return
	}

	_ = app.writeJSON(w, http.StatusOK, emails)
}