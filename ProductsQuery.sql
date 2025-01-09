-- Author: Keanu Farro
-- 9/01/2025
-- SQL Script with the Query's required for the products that will be on the front-end website

CREATE DATABASE IF NOT EXISTS online_store;

USE online_store;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    sku VARCHAR(50),
    product_name VARCHAR(255),
    product_image BLOB,
    price DECIMAL(10, 2),
    category VARCHAR(100),
    availability BOOLEAN,
    store_location VARCHAR(100)
);
-- Insert 100 unique products
INSERT INTO products (product_id, sku, product_name, product_image, price, category, availability, store_location) VALUES
(1, 'LAP12345', 'Dell XPS 13 Laptop', NULL, 799.99, 'Laptops', 1, 'New York'),
(2, 'MOB98765', 'Samsung Galaxy S21', NULL, 499.99, 'Mobile Phones', 1, 'Los Angeles'),
(3, 'TAB56789', 'Apple iPad 10.2', NULL, 299.99, 'Tablets', 0, 'Chicago'), 
(4, 'HDTV23456', 'LG 55" 4K TV', NULL, 649.99, 'Televisions', 1, 'San Francisco'), 
(5, 'COM78901', 'iMac 24" Desktop', NULL, 1199.99, 'Desktops', 1, 'Miami'), 
(6, 'GAM23456', 'Logitech Gaming Mouse', NULL, 129.99, 'Gaming Accessories', 1, 'New York'),
(7, 'HDM23412', 'Anker HDMI Cable', NULL, 15.99, 'Cables & Adapters', 1, 'Los Angeles'),
(8, 'SPM34567', 'Apple Watch Series 7', NULL, 249.99, 'Smartwatches', 0, 'San Francisco'), 
(9, 'CAM45678', 'Canon EOS Rebel T7', NULL, 399.99, 'Cameras', 1, 'Chicago'),
(10, 'PRS78901', 'HP LaserJet Printer', NULL, 59.99, 'Printers & Scanners', 1, 'Miami'),
(11, 'SPK23456', 'Bose SoundLink', NULL, 89.99, 'Speakers', 1, 'New York'),
(12, 'SSD12345', 'Samsung 1TB SSD', NULL, 99.99, 'Storage Devices', 1, 'Los Angeles'),
(13, 'VR23456', 'Oculus Quest 2', NULL, 499.99, 'Virtual Reality', 1, 'San Francisco'), 
(14, 'KNB98765', 'Logitech K380', NULL, 29.99, 'Keyboards', 1, 'Miami'), 
(15, 'MSE12345', 'Logitech MX Master 3', NULL, 19.99, 'Mice', 0, 'Chicago'),
(16, 'HED56789', 'Sony WH-1000XM4', NULL, 59.99, 'Headphones', 1, 'Los Angeles'),
(17, 'ROUTER1234', 'TP-Link Archer AX50', NULL, 149.99, 'Networking', 1, 'San Francisco'),
(18, 'CPU23456', 'Intel Core i7-12700K', NULL, 259.99, 'Processors', 1, 'Miami'),
(19, 'CAM98765', 'Sony Alpha A7 III', NULL, 899.99, 'Cameras', 1, 'New York'), 
(20, 'VRM12345', 'HTC Vive Cosmos Elite', NULL, 299.99, 'VR Accessories', 1, 'Los Angeles'), 
(21, 'TAB12345', 'Amazon Fire HD 8', NULL, 89.99, 'Tablets', 1, 'New York'), 
(22, 'LAP67890', 'HP Spectre x360', NULL, 1199.99, 'Laptops', 1, 'Los Angeles'), 
(23, 'MOB54321', 'Google Pixel 6', NULL, 699.99, 'Mobile Phones', 1, 'Chicago'), 
(24, 'HDTV78901', 'Samsung 65" QLED', NULL, 899.99, 'Televisions', 1, 'San Francisco'), 
(25, 'COM23456', 'Dell Inspiron 27', NULL, 999.99, 'Desktops', 1, 'Miami'),
(26, 'GAM34567', 'Razer Gaming Keyboard', NULL, 149.99, 'Gaming Accessories', 1, 'New York'),
(27, 'HDM34567', 'Belkin HDMI Cable', NULL, 19.99, 'Cables & Adapters', 1, 'Los Angeles'), 
(28, 'SPM45678', 'Fitbit Versa 3', NULL, 199.99, 'Smartwatches', 1, 'San Francisco'), 
(29, 'CAM67890', 'Nikon D3500', NULL, 499.99, 'Cameras', 1, 'Chicago'),
(30, 'PRS67890', 'Epson EcoTank Printer', NULL, 229.99, 'Printers & Scanners', 1, 'Miami'),
(31, 'SPK67890', 'JBL Flip 5', NULL, 79.99, 'Speakers', 1, 'New York'), 
(32, 'SSD67890', 'Western Digital 2TB SSD', NULL, 179.99, 'Storage Devices', 1, 'Los Angeles'), 
(33, 'VR34567', 'Sony PlayStation VR', NULL, 399.99, 'Virtual Reality', 1, 'San Francisco'), 
(34, 'KNB23456', 'Corsair K70 RGB', NULL, 119.99, 'Keyboards', 1, 'Miami'), 
(35, 'MSE67890', 'Microsoft Surface Mouse', NULL, 34.99, 'Mice', 1, 'Chicago'), 
(36, 'HED67890', 'Beats Studio3', NULL, 199.99, 'Headphones', 1, 'Los Angeles'), 
(37, 'ROUT67890', 'Asus RT-AX88U', NULL, 299.99, 'Networking', 1, 'San Francisco'), 
(38, 'CPU67890', 'AMD Ryzen 9 5900X', NULL, 429.99, 'Processors', 1, 'Miami'), 
(39, 'CAM23456', 'Fujifilm X-T30', NULL, 799.99, 'Cameras', 1, 'New York'), 
(40, 'VR78901', 'Valve Index', NULL, 999.99, 'VR Accessories');