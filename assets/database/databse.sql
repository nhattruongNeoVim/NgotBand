DROP DATABASE TheBand;
CREATE DATABASE TheBand;
USE TheBand;

CREATE TABLE Band (
    band_id INT AUTO_INCREMENT PRIMARY KEY,
    band_name VARCHAR(100) NOT NULL,
    description TEXT,
    image_url VARCHAR(255),
    website_url VARCHAR(255)
);

CREATE TABLE Member (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    band_id INT,
    member_name VARCHAR(100) NOT NULL,
    instrument VARCHAR(50),
    bio TEXT,
    FOREIGN KEY (band_id) REFERENCES Band(band_id)
);

CREATE TABLE Album (
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    band_id INT,
    album_title VARCHAR(100) NOT NULL,
    release_date DATE,
    cover_image_url VARCHAR(255),
    FOREIGN KEY (band_id) REFERENCES Band(band_id)
);

CREATE TABLE Songs (
    song_id INT AUTO_INCREMENT PRIMARY KEY,
    track INT NOT NULL,
    song_name VARCHAR(100) NOT NULL,
    author VARCHAR(50) NOT NULL,
    duration VARCHAR(50) NOT NULL,
    production_year INT NOT NULL,
    album_id INT NOT NULL,
    format VARCHAR(50) NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Album(album_id)
);

CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    band_id INT,
    product_name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2),
    image_url VARCHAR(255),
    FOREIGN KEY (band_id) REFERENCES Band(band_id)
);

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE,
    password_hash VARCHAR(255) NOT NULL
);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    product_id INT,
    quantity INT,
    total_price DECIMAL(10, 2),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE Address (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    recipient_name VARCHAR(100),
    street_address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(20),
    country VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
