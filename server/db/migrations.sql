DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS reviews CASCADE;
DROP TABLE IF EXISTS places CASCADE;
DROP TABLE IF EXISTS categories_places CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE categories (
  id SERIAL PRIMARY KEY NOT NULL,
  description VARCHAR(255) NOT NULL
);
CREATE TABLE places(
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,

);
CREATE TABLE categories_places(
  id SERIAL PRIMARY KEY NOT NULL,
  place_id INTEGER REFERENCES places(id) ON DELETE CASCADE,
  category_id INTEGER REFERENCES categories(id) ON DELETE CASCADE
);
CREATE TABLE reviews(
  id SERIAL PRIMARY KEY NOT NULL,
  date TIMESTAMP NOT NULL,
  title VARCHAR(255),
  description VARCHAR(255),
  rating INTEGER,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

