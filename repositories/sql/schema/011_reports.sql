-- +goose Up
CREATE TABLE reports(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    reporter_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    description TEXT NOT NULL DEFAULT '',
    location TEXT NOT NULL DEFAULT '',
);

-- +goose Down
DROP TABLE reports;