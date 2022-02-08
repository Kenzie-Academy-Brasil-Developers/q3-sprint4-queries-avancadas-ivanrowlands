INSERT INTO addres
    (street, country, city)
VALUES
    ('Avenida Higienópolis', 'Brasil', 'Londrina'),
    ('Avenida Paulista', 'Brasil', 'São Paulo'),
    ('Rua Marcelino Champagnat', 'Brasil', 'Curitiba');

INSERT INTO users
    (name, email, password, adress_id)
VALUES
    ('Cauan', 'cauan@exemple.com', '1234', (SELECT id FROM addres WHERE street LIKE '%Paulista' AND city = 'São Paulo')),
    ('Chrystian', 'chrystian@exemple.com', '4321', (SELECT id FROM addres WHERE street LIKE '%Marcelino%' AND city = 'Curitiba')),
    ('Matheus', 'matheus@exemple.com', '3214', (SELECT id FROM addres WHERE street LIKE '%Higienópolis' AND city = 'Londrina'));

INSERT INTO social_midia
    (name)
VALUES
    ('Youtube'),
    ('Twitter'),
    ('Instagram'),
    ('Facebook'),
    ('TikTok');

INSERT INTO users_social_midia
    (user_id, social_midia_id)
VALUES
    ((SELECT id FROM user WHERE name = 'Cauan'), (SELECT id FROM social_midia WHERE name = 'Youtube')),
    ((SELECT id FROM user WHERE name = 'Chrystian'), (SELECT id FROM social_midia WHERE name = 'Youtube')),
    ((SELECT id FROM user WHERE name = 'Matheus'), (SELECT id FROM social_midia WHERE name = 'Youtube')),
    ((SELECT id FROM user WHERE name = 'Chrystian'), (SELECT id FROM social_midia WHERE name = 'Twitter')),
    ((SELECT id FROM user WHERE name = 'Cauan'), (SELECT id FROM social_midia WHERE name = 'Twitter')),
    ((SELECT id FROM user WHERE name = 'Matheus'), (SELECT id FROM social_midia WHERE name = 'Instagram')),
    ((SELECT id FROM user WHERE name = 'Matheus'), (SELECT id FROM social_midia WHERE name = 'Facebook')),
    ((SELECT id FROM user WHERE name = 'Chrystian'), (SELECT id FROM social_midia WHERE name = 'Instagram')),
    ((SELECT id FROM user WHERE name = 'Cauan'), (SELECT id FROM social_midia WHERE name = 'TikTok'));