-- name: CreateOperator :one
INSERT INTO operators(end_at, police_id, center_id)
VALUES (?, ?, ?)
RETURNING id;
--

-- name: GetCurrentOperators :many
SELECT * FROM operators
WHERE end_at > CURRENT_TIMESTAMP AND
    begin_at < CURRENT_TIMESTAMP;
--

-- name: GetOperatorsOfCenter :many
SELECT * FROM operators
WHERE end_at > CURRENT_TIMESTAMP AND
    begin_at < CURRENT_TIMESTAMP AND
    center_id = ?;
--