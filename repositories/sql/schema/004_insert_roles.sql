-- +goose Up
INSERT INTO centers(address)
VALUES ('resident'),
       ('police'),
       ('admin');

-- +goose Down
DELETE FROM centers;