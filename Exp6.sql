CREATE TABLE store (
                     order_no INT PRIMARY KEY AUTO_INCREMENT,
                     code INT,
                     item VARCHAR(100),
                     quantity INT,
                     price DECIMAL(10,2) NOT NULL,
                     discount DECIMAL(2,2) DEFAULT 0, 
                     mrp DECIMAL(10,2) NOT NULL);
 INSERT INTO store (code,item,quantity,price,discount,mrp) VALUES
 (101, "Bedsheet", 5, 100, 0, 100),
 (102, "Notebokk", 10, 27, 0.1, 30);
 SELECT * FROM store;
 CREATE VIEW CART AS
SELECT item, quantity FROM Store;
INSERT INTO Store (`code`, `item`, `quantity`, `price`, `discount`, `mrp`) 
VALUES ("103", "Rice", 10, 50, 0, 50);
SELECT * FROM CART;
DROP VIEW CART;
 