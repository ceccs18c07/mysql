USE test;
DROP TABLE employee;
CREATE TABLE Employee(code char(4) not null,name char(10) not null,designation char(30) not null,dob date,salary numeric);
INSERT INTO Employee VALUES ("e1","Alka","Manager","1980-12-24",500000);
INSERT INTO Employee VALUES ("e2","Anna","Salesman","1990-03-15",25500);
UPDATE Employee SET salary=55000 WHERE code="e1";
DELETE FROM  Employee WHERE code="e2";
