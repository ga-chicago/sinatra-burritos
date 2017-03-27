-- psql -d mexican_food -a -f tacos_migration.sql


CREATE TABLE tacos (id SERIAL PRIMARY KEY, name varchar(255), protein varchar(255), spicy_level int, price float);
