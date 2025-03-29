-- +goose Up
CREATE TABLE files_notifications(
    added_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    file_id TEXT NOT NULL REFERENCES files(id) ON DELETE CASCADE,
    note_id INTEGER NOT NULL REFERENCES notifications(id) ON DELETE CASCADE,
    UNIQUE(file_id, note_id)
);

-- +goose Down
DROP TABLE files_notifications;