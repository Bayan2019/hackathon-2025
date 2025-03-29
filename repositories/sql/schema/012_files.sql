-- +goose Up
CREATE TABLE files(
    id TEXT PRIMARY KEY,
    report_id INTEGER NOT NULL REFERENCES reports(id) ON DELETE CASCADE
);

-- +goose Down
DROP TABLE files;