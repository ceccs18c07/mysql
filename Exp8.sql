-- Create a table employee with specifications code,name,dob,designation,salary
CREATE TABLE Employee(
                       code INT PRIMARY KEY NOT NULL, 
                       name CHAR(50) NOT NULL, 
                       dob date ,
                       designation CHAR(60) ,
                       salary NUMERIC);
-- Insert values into the table
INSERT INTO Employee (code , name , dob , designation , salary) VALUES
			(101,"John","1976-12-26","Manager",50000),
            (102,"Mark","1984-05-19","Clerk",25000),
            (103,"Jack","1986-08-06","Clerk",27000);	
-- Display sum of salaries from the table employee where designation is clerk
SELECT SUM(salary) FROM Employee WHERE designation="Clerk";  
-- Display the maximum salary value from the table employee
 SELECT MAX(salary) FROM Employee;
 -- Display average salary of employee
 SELECT AVG(salary) FROM Employee; 
 -- Describe minimum salary value from the table
 SELECT MIN(salary) FROM Employee;
 -- Display total number of employees
  SELECT COUNT(code) FROM Employee;
  DROP TABLE Employee;
            