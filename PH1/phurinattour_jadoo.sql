
-- phurinattour_jadoo.sql
CREATE DATABASE IF NOT EXISTS phurinattour CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE phurinattour;

CREATE TABLE IF NOT EXISTS users (
 id INT AUTO_INCREMENT PRIMARY KEY,
 username VARCHAR(50) UNIQUE NOT NULL,
 password VARCHAR(255) NOT NULL,
 role ENUM('admin','member') DEFAULT 'member'
);

INSERT IGNORE INTO users (username,password,role) VALUES ('admin', MD5('1234'), 'admin');
INSERT IGNORE INTO users (username,password,role) VALUES ('user1', MD5('1234'), 'member');

CREATE TABLE IF NOT EXISTS place_types ( id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100) NOT NULL );
INSERT IGNORE INTO place_types (id,name) VALUES (1,'สถานที่ท่องเที่ยว'),(2,'ที่พัก'),(3,'ร้านขายของชำ');

CREATE TABLE IF NOT EXISTS province_info (
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 description TEXT,
 population INT,
 area FLOAT,
 image VARCHAR(255)
);
INSERT IGNORE INTO province_info (id,name,description,population,area,image) VALUES
(1,'อุดรธานี','อุดรธานี เมืองศูนย์กลางภาคอีสานตอนบน มีแหล่งท่องเที่ยวเช่น ทะเลบัวแดง วัดป่าภูก้อน และ UD Town',1100000,9606.54,'assets/img/province.jpg');

CREATE TABLE IF NOT EXISTS places (
 id INT AUTO_INCREMENT PRIMARY KEY,
 type_id INT,
 name VARCHAR(150) NOT NULL,
 description TEXT,
 address VARCHAR(255),
 latitude DECIMAL(10,6),
 longitude DECIMAL(10,6),
 image VARCHAR(255),
 FOREIGN KEY (type_id) REFERENCES place_types(id)
);

INSERT IGNORE INTO places (type_id,name,description,address,latitude,longitude,image) VALUES
(1,'ทะเลบัวแดง','ทะเลบัวแดง จุดชมดอกบัวสายพันธุ์ท้องถิ่น','กุมภวาปี',17.2345,103.1480,'assets/img/place1.jpg'),
(1,'วัดป่าภูก้อน','วัดบนเนินเขาพิถีพิถัน','บ้านผาแตก',17.4810,102.8190,'assets/img/place2.jpg'),
(1,'UD Town','ย่านกิจกรรมใจกลางเมือง','ใจกลางเมือง',17.4148,102.7882,'assets/img/place3.jpg');

CREATE TABLE IF NOT EXISTS products (
 id INT AUTO_INCREMENT PRIMARY KEY,
 province_id INT,
 name VARCHAR(150) NOT NULL,
 description TEXT,
 price DECIMAL(10,2),
 image VARCHAR(255),
 FOREIGN KEY (province_id) REFERENCES province_info(id)
);

INSERT IGNORE INTO products (province_id,name,description,price,image) VALUES
(1,'ผ้าขิดอุดร','ผ้าทอท้องถิ่นลวดลายสวย',850.00,'assets/img/product1.jpg'),
(1,'กาแฟท้องถิ่น','กาแฟคั่วจากชุมชน',250.00,'assets/img/product2.jpg');
