DROP TABLE IF EXISTS helo_users;


CREATE TABLE helo_users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    profile_pic text
);

DROP TABLE IF EXISTS helo_posts;

CREATE TABLE helo_posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content text,
    img text,
    author_id INT REFERENCES helo_users(id),
    date_created TIMESTAMP
);