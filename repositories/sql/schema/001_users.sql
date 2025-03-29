-- +goose Up
CREATE TABLE users(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    name TEXT NOT NULL,
    -- email TEXT NOT NULL UNIQUE,
    date_of_birth TEXT NOT NULL DEFAULT '2000-01-01',
    password_hash TEXT NOT NULL,
    current_location TEXT NOT NULL DEFAULT 'Almaty',
    phone TEXT NOT NULL DEFAULT '+0(000)000-00-00'
);

-- +goose Down
DROP TABLE users;