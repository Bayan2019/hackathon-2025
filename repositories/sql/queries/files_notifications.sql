-- name: AddFile2Notification :exec
INSERT INTO files_notifications(file_id, note_id)
VALUES (?, ?);
--

-- name: RemoveFilesOfNotifications :exec
DELETE FROM files_notifications 
WHERE note_id = ?;
--

-- name: RemoveFileFromNotification :exec
DELETE FROM files_notifications 
WHERE file_id = ? AND note_id = ?;
--