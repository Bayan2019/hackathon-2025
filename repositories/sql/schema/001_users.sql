-- +goose Up
CREATE TABLE users(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    name TEXT NOT NULL,
    -- email TEXT NOT NULL UNIQUE,
    password_hash TEXT NOT NULL,
    address TEXT,
    phone TEXT NOT NULL DEFAULT '+0(000)000-00-00'
);

-- +goose Down
DROP TABLE users;