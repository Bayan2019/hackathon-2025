-- name: AddFile2Report :exec
INSERT INTO files_reports(file_id, report_id)
VALUES (?, ?);
--

-- name: RemoveFilesOfReport :exec
DELETE FROM files_reports 
WHERE report_id = ?;
--

-- name: RemoveFileFromReport :exec
DELETE FROM files_reports 
WHERE file_id = ? AND report_id = ?;
--