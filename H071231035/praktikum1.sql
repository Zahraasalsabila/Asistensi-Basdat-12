CREATE DATABASE library;

USE library;

CREATE TABLE authors(
	id INT PRIMARY KEY AUTO_INCREMENT,
	namAa VARCHAR(100) NOT NULL
	);
	
CREATE TABLE books(
	id INT PRIMARY KEY AUTO_INCREMENT,
	isbn VARCHAR(13) NOT NULL,
	title VARCHAR(100)NOT NULL,
	author_id INT NOT NULL,
	FOREIGN KEY(author_id) REFERENCES authors(id)
	);
	
ALTER TABLE authors
ADD COLUMN 
nationality VARCHAR(50)NOT NULL;

ALTER TABLE books
ADD CONSTRAINT UNIQUE(isbn);

DESC authors;
DESC books;


CREATE TABLE members(
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(50)NOT NULL,
	last_name VARCHAR(50)NOT NULL,
	email VARCHAR(100) UNIQUE,
	phone_number VARCHAR(10),
	JOIN_date DATE NOT NULL,
	membership_type VARCHAR(50) NOT NULL
	);
	
CREATE TABLE borrowings(
	id INT PRIMARY KEY AUTO_INCREMENT,
	member_id INT NOT NULL,
	book_id INT NOT NULL,
	borrow_date DATE NOT NULL,
	return_date DATE
	);
	
ALTER TABLE books
ADD COLUMN 
published_year YEAR;

ALTER TABLE books
ADD COLUMN 
genre VARCHAR(50);

ALTER TABLE books
ADD COLUMN 
copies_available INT;

DESC members;
DESC borrowings;
