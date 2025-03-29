-- name: GetCenters :many
SELECT * FROM centers;
--

-- name: GetCenterById :one
SELECT * FROM centers WHERE id = ?;
--

-- name: CreateCenter :one
INSERT INTO centers(address)
VALUES (?)
RETURNING id;
--

-- name: UpdateCenter :exec
UPDATE centers 
SET address = ? 
WHERE id = ?;
--

-- name: DeleteCenter :exec
DELETE FROM centers WHERE id = ?;
--