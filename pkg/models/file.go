package models

import "time"

type File struct {
	ID        uint      `json:"id" gorm:"type:integer;primary_key;autoIncrement:true"`
	Name      string    `json:"name" gorm:"uniqueIndex"`
	Location  string    `json:"location"`
	Processed bool      `json:"processed"`
	Output    string    `json:"output"`
	CreatedAt time.Time `json:"created_at" gorm:"autoCreateTime"`
	UpdatedAt time.Time `json:"updated_at" gorm:"autoUpdateTime"`
}

type UploadFile struct {
	Name string `json:"name" binding:"required"`
}

type ProcessFile struct {
	Name string `json:"name" binding:"required"`
}
