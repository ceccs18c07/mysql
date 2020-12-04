-- create a table class,fields are id and name
DROP TABLE class;
CREATE TABLE class(id INT AUTO_INCREMENT PRIMARY KEY , name VARCHAR(60));
-- insert values into the table
INSERT INTO class (name)
VALUES("Susan"),
("Ravi"),
("Mary");
-- Display the table
SELECT * FROM class;
-- Apply commit,save point and rollback commands
INSERT INTO class (name) VALUES("Sanghetha");
ROLLBACK;
INSERT INTO class (name) VALUES("Sanghetha");
COMMIT;
START TRANSACTION;
SAVEPOINT BeforeEvilEra;
INSERT INTO class (name) VALUES("EvilEra");
ROLLBACK TO BeforeEvilEra;
COMMIT;



