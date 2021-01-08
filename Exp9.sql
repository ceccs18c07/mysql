-- Create a table employee with specifications code,name,dob,designation,salary
CREATE TABLE Employee(
                       code INT PRIMARY KEY NOT NULL, 
                       name CHAR(50) NOT NULL, 
                       dob date ,
                       designation CHAR(60) ,
                       salary NUMERIC);

INSERT INTO Employee (code , name , dob , designation , salary) VALUES
			(101,"John","1976-12-26","Manager",50000),
            (102,"Mark","1984-05-19","Clerk",25000),
            (103,"Stephan","1986-08-06","Clerk",27000);	

-- Display code,name and designation in desecending order of the name
SELECT * FROM Employee ORDER BY name DESC;

-- Create table deposit with fields babbno,branch_name,amount
CREATE TABLE deposit(
                      baccno  INT PRIMARY KEY NOT NULL,
                      branch_name VARCHAR(60),
                      amount FLOAT);
INSERT INTO deposit (baccno , branch_name , amount) VALUES
                     (1082,"Kerala",500000),
                     (1096,"Karnataka",400000),
                     (1378,"Tamil nadu",600000);
 
 -- Give branch name and details of deposit table
SELECT branch_name, COUNT(baccno),SUM(amount) FROM deposit GROUP BY branch_name;
DROP TABLE Employee

 
 