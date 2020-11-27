CREATE DATABASE task;
CREATE TABLE Department(
             code INT PRIMARY KEY NOT NULL,
			 title CHAR(30),
             dept_name CHAR(50) UNIQUE,
             dept_id INT NOT NULL,
             salary INT,
             CHECK (salary>2000));
INSERT INTO Department (code , title , dept_name , dept_id , salary) 
VALUES  (101,"Exp Title","Computer Science",010,50000);     
CREATE TABLE Instructor(
             name CHAR(60) NOT NULL,
             code INT,
             id INT PRIMARY KEY DEFAULT 0) ; 
 INSERT INTO Instructor (name , code , id )
 VALUES  ("Mark Joseph",110,012);
