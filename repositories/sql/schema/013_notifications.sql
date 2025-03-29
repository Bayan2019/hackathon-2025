-- +goose Up
CREATE TABLE notifications(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    note TEXT NOT NULL
);

-- +goose Down
DROP TABLE notifications;
--