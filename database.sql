CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  birthdate DATE NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  username VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  avatar VARCHAR(255),
  address VARCHAR(255),
  card_number VARCHAR(255),
  cvv VARCHAR(255),
  expiry_date DATE,
  cardholder_name VARCHAR(255),
  PRIMARY KEY (id)
);

CREATE TABLE concerts (
  id INT NOT NULL AUTO_INCREMENT,
  artist_name VARCHAR(255) NOT NULL,
  date DATE NOT NULL,
  time TIME NOT NULL,
  venue VARCHAR(255),
  PRIMARY KEY (id)
);

CREATE TABLE tickets (
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  concert_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (concert_id) REFERENCES concerts (id)
);
