-- +goose Up
INSERT INTO users(name, password_hash)
    VALUES ('admin', '$2a$10$vqjSWa5BZEvN/ef7a5pTTOZLImNdubTNVqmyU.7ctiG3kEXyrGk/C');

-- +goose Down
DELETE FROM users;