-- name: GetFiles :many
SELECT * FROM files;
--

-- name: GetFileById :one
SELECT * FROM files WHERE id = ?;
--

-- name: UpdateFile :exec
UPDATE files
SET updated_at = CURRENT_TIMESTAMP
WHERE id = ?;
--

-- name: CreateFile :exec
INSERT INTO files(id)
VALUES (?);
--

-- name: GetFilesOfReport :many
SELECT f.*
FROM files AS f
JOIN files_reports AS fr
ON f.id = fr.file_id
WHERE fr.report_id = ?;
--

-- name: DeleteFile :exec
DELETE FROM files WHERE id = ?;
--