-- +goose Up
CREATE TABLE duty_operators(
    begin_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    end_at TEXT NOT NULL,
    police_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    center_id INTEGER NOT NULL REFERENCES centers(id) ON DELETE CASCADE,
);

-- +goose Down
DROP TABLE centers;