DROP TABLE IF EXISTS users_social_midia;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS addres;
DROP TABLE IF EXISTS social_midia;

CREATE TABLE IF NOT EXISTS social_midia (
    id              BIGSERIAL       PRIMARY KEY,
    name            VARCHAR(200)    NOT NULL        UNIQUE
);

CREATE TABLE IF NOT EXISTS addres (
    id              BIGSERIAL       PRIMARY KEY,
    street          VARCHAR         NOT NULL,
    country         VARCHAR(200)    NOT NULL,
    city            VARCHAR(200)    NOT NULL
);

CREATE TABLE IF NOT EXISTS users (
    id              BIGSERIAL       PRIMARY KEY,
    name            VARCHAR(200),
    email           VARCHAR         NOT NULL        UNIQUE
    password        VARCHAR         NOT NULL,
    adress_id       INTEGER         NOT NULL,
    FOREIGN KEY (adress_id)         REFERENCES addres("id")
);

CREATE TABLE IF NOT EXISTS users_social_midia (
    id              BIGSERIAL       PRIMARY KEY,
    user_id         INTEGER         NOT NULL,
    social_midia_id INTEGER         NOT NULL,
    FOREIGN KEY (user_id)           REFERENCES user("id"),
    FOREIGN KEY (social_midia_id)   REFERENCES social_midia("id")
);