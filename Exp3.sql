USE test;
DROP TABLE Employee;
CREATE TABLE Employee(
                  empid int,
                  fname char(40),
                  lname char(40),
                  dept char(50),
                  dob date);
 DROP TABLE Employdetails;                 
CREATE TABLE Employdetails(
                         designation char(30),
                         salary int,
                         address char(100),
                         nationality char(20),
                         dno int,
                         primary key (dno),
                         empid int references Employee(empid));
  INSERT INTO Employee VALUES
  (111,"Mark","Stephan","Sales","1984-05-12"),
  (121,"Antony","Joseph","Production","1990-11-01");
  INSERT INTO Employdetails VALUES
  ("Manager","500000","xyz","Indian",454,151),
  ("Salesman","250000","abc","Indian",455,161);
  SELECT * FROM Employee WHERE empid IN (SELECT empid FROM Employdetails);
  SELECT * FROM Employee WHERE empid not IN(SELECT empid FROM Employdetails);
  
             

