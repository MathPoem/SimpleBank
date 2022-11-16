CREATE TABLE users
(
    "id"       bigserial PRIMARY KEY,
    "name"     varchar NOT NULL,
    "password" varchar NOT NULL
);

CREATE TABLE scores
(
    "id" bigserial PRIMARY KEY,
    "user_id" bigint REFERENCES users,
    "value" bigint DEFAULT 0 CHECK ( value >= 0)
);