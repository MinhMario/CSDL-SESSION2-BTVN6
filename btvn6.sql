-- Tao bang trong MYSQL
-- bang user: id_user(int) PK, full_name(varchar) : khong duoc trong, age INT >0 ,
USE db_user1;
CREATE TABLE IF NOT EXISTS users(
 id_book CHAR(5) PRIMARY KEY,
 book_name VARCHAR(200) NOT NULL,
 price DECIMAL(10,2) DEFAULT 5000,
 quantity INT CHECK(quantity>=0) 
);
ALTER TABLE users
ADD NgayNhap DATE;

CREATE TABLE BORROW_BOOKS(
	id INT  AUTO_INCREMENT PRIMARY KEY,
    books_id CHAR(5),
    FOREIGN KEY(books_id) REFERENCES users(id_book),
    book_date DATE DEFAULT (CURRENT_DATE)
);




