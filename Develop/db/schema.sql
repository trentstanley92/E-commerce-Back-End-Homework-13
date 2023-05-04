-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- Use the `ecommerce_db` database.
USE ecommerce_db;

-- Create the `Category` model.
CREATE TABLE Category (
  id INT NOT NULL AUTO_INCREMENT,
  category_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

-- Create the `Product` model.
CREATE TABLE Product (
  id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(255) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  stock INT NOT NULL DEFAULT 10,
  category_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (category_id) REFERENCES Category(id)
);

-- Create the `Tag` model.
CREATE TABLE Tag (
  id INT NOT NULL AUTO_INCREMENT,
  tag_name VARCHAR(255),
  PRIMARY KEY (id)
);

-- Create the `ProductTag` model.
CREATE TABLE ProductTag (
  id INT NOT NULL AUTO_INCREMENT,
  product_id INT NOT NULL,
  tag_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (product_id) REFERENCES Product(id),
  FOREIGN KEY (tag_id) REFERENCES Tag(id)
);