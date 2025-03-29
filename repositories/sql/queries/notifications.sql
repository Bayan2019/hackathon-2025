-- name: CreateNotification :one
INSERT INTO notifications(note)
VALUES (?)
RETURNING id;
--

-- name: GetNotifications :many
SELECT * FROM notifications;
--

-- name: GetNotificationById :one
SELECT * FROM notifications WHERE id = ?;
--

-- name: UpdateNotification :exec
UPDATE notifications
SET updated_at = CURRENT_TIMESTAMP,
    note = ?
WHERE id = ?;
--

-- name: DeleteNotification :exec
DELETE FROM reports WHERE id = ?;
--