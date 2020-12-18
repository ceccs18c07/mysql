-- create a table Store with fields order_no,code,item,quantity,price,discount and mrp 
CREATE TABLE Store(
                    order_no INT PRIMARY KEY AUTO_INCREMENT,
                    code INT,
                    item VARCHAR(50),
                    quantity INT,
                    price DECIMAL(10,2) NOT NULL,
                    discount DECIMAL(2,2) DEFAULT 0,
                    mrp DECIMAL(10,2) NOT NULL);
-- insert values into the table
INSERT INTO Store (code,item,quantity,price,discount,mrp) VALUES
(101, "Bedsheet", 5, 100, 0, 100),
(102, "Notebokk", 10, 27, 0.1, 30); 
-- display the table
SELECT * FROM Store;  
-- sql queries to display the reminder if the amount of each item in store is divided by 9  
SELECT MOD(mrp , 9) FROM Store;
-- sql queries to display the amount in store and its square
SELECT  POWER(mrp , 2) FROM Store;
--    sql queries to divide the amount in stock of each item by7 and display the result round to the nearest integr 
SELECT ROUND(mrp / 7 , 0) FROM Store; 
DROP TABLE Store; 
                    
                    
                    
                    