use test;
create table student(sno int,name char(20),marks int,dept char(30));
select * from student
alter table student add age int;
alter table student modify column dept char(40);
alter table student drop column marks;
alter table student rename to students;
SET SQL_SAFE_UPDATES = 0;
delete from students;
drop table students;

