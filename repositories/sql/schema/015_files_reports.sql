-- +goose Up
CREATE TABLE files_reports(
    added_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    file_id TEXT NOT NULL REFERENCES files(id) ON DELETE CASCADE,
    report_id INTEGER NOT NULL REFERENCES reports(id) ON DELETE CASCADE,
    UNIQUE(file_id, report_id)
);

-- +goose Down
DROP TABLE files_reports;