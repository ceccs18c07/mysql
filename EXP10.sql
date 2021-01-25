CREATE Table CUR
(name CHAR(10),
 dob DATE,
 salary INT(11));
 DELIMITER //
 CREATE PROCEDURE IMP()
 Begin
     DECLARE done int default FALSE;
     DECLARE emp_name char(10);
     DECLARE emp_dob date;
     DECLARE emp_salary int(11);
     DECLARE  emp_record CURSOR for select name, dob, salary From employee;
     DECLARE CONTINUE HANDLER FOR FOUND SET done=TRUE;
     OPEN emp_record;
     read_loop: LOOP
          FETCH emp_record INTO emp_name, emp_dob, emp_salary;
          IF done THEN
                 LEAVE read_loop;
		  END IF;
          INSERT INTO CUR VALUES(emp_name, emp_dob, emp_salary);
	 END LOOP;
     Close emp_record;
END;
DELIMITER;
CALL IMP();
SELECT * FROM CUR;