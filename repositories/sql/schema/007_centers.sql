-- +goose Up
CREATE TABLE centers(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    address TEXT UNIQUE NOT NULL  
);

-- +goose Down
DROP TABLE centers;