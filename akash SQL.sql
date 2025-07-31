create database employee
use employee
create table emp(
id int primary key,
name varchar(20) not null,
department varchar(30) not null,
experience int);
insert into emp(id,name,department,experience) values
(1,'akash','it',2),
(2,'arun','computer science',3),
(3,'ranga','cyber',4),
(4,'aswin','electrical',4),
(5,'ajay','aids',5);
select*from emp;
update emp
set name='gokul' where id=2;
update emp
set department='artificial' where id=2;
alter table emp
add salary varchar(120);
update emp
set salary=30000 where id=2;
update emp
set salary=40000 where id=1;
update emp
set salary=50000 where id=3;
update emp
set salary=60000 where id=4;
update emp
set salary=20000 where id=5;






