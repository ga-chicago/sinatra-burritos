-- psql -a -f migrations.sql

CREATE DATABASE mexican_food;

\c mexican_food;

CREATE TABLE users (id SERIAL PRIMARY KEY, username varchar(255), password_digest varchar(255));

CREATE TABLE burritos (id SERIAL PRIMARY KEY, name varchar(255), protein varchar(255), wrapped boolean, spicy_level int, price float);
