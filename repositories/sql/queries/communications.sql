-- name: CreateMessage :one
INSERT INTO communications(from_id, to_id, message)
VALUES (?, ?, ?)
RETURNING id;
--

-- name: CreateMessageSOS :one
INSERT INTO communications(from_id, to_id, message, type)
VALUES (?, ?, ?, 'SOS')
RETURNING id;
--

-- name: DeleteMessage :exec
DELETE FROM communications WHERE id = ?;
--