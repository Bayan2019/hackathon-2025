-- name: CreateReport :one
INSERT INTO reports(description, location, date)
VALUES (?, ?, ?)
RETURNING id;
--

-- name: GetReports :many
SELECT * FROM reports;
--

-- name: GetReportById :one
SELECT * FROM reports WHERE id = ?;
--

-- name: UpdateReport :exec
UPDATE reports
SET updated_at = CURRENT_TIMESTAMP,
    date = ?,
    description = ?,
    location = ?
WHERE id = ?;
--

-- name: DeleteReport :exec
DELETE FROM reports WHERE id = ?;
--