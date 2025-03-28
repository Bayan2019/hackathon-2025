-- +goose Up
INSERT INTO centers(address)
VALUES ('fïlm'),
       ('Mwltfïlm'),
       ('Serïyalıq'),
       ('Mwltserïal');

-- +goose Down
DELETE FROM centers;