-- +goose Up
INSERT INTO centers(address)
VALUES ('​Улица Желтоксан, 144​1 этаж
Алмалинский район, Алматы, 050000/A05D6X3'),
       
       ('​Улица Курмангазы, 88​цокольный этаж
Алмалинский район, Алматы, 050022/A05F2T1'),
       
       ('Улица Габдуллина, 5
Бостандыкский район, Алматы, 050013/A15H4C7'),

       ('​Улица Шевченко, 147и​1 этаж
Алмалинский район, Алматы, 050008/A05K2M3'),

       ('​Проспект Достык, 4​улица Гоголя, 45
Медеуский район, Алматы, 050002/A25D9E5'),
        
        ('Проспект Назарбаева, 187
Бостандыкский район, Алматы, 050013/A15T6K4'),

        ('​Улица Макатаева, 192​1 этаж
Алмалинский район, Алматы, 050000/A05F0B5'),

        ('Улица Толе би, 159​1 этаж
Алмалинский район, Алматы, 050026/A05H0M5'),

        ('Микрорайон Коктем-1, 9а
Коктем-1 м-н, Бостандыкский район, Алматы, 050040/A15C9F5'),

        ('​Микрорайон Самал-1, 6​1 этаж
Самал-1 м-н, Медеуский район, Алматы, 050051/A25C9A5'),
-- +goose Down
DELETE FROM centers;