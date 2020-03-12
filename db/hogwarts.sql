DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;

CREATE TABLE houses (
  id SERIAL primary key,
  name VARCHAR(255),
  logo_url VARCHAR(255)
);

CREATE TABLE students (
  id SERIAL primary key,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house_id INT REFERENCES houses(id),
  age INT
);
