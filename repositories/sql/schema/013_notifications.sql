-- +goose Up
CREATE TABLE notifications(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    note TEXT NOT NULL
);

-- +goose Down
DROP TABLE notifications;
--