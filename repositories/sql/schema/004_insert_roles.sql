-- +goose Up
INSERT INTO roles(title)
VALUES ('resident'),
       ('police'),
       ('admin');

-- +goose Down
DELETE FROM roles;