-- +goose Up
CREATE TABLE reports(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    description TEXT NOT NULL DEFAULT '',
    location TEXT NOT NULL DEFAULT '',
    date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- +goose Down
DROP TABLE reports;