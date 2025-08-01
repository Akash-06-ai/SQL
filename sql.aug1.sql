create database Samples
use Samples
CREATE TABLE Student(
reg_no INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
department VARCHAR(40) NOT NULL,
year INT NOT NULL);
INSERT INTO Student(reg_no,name,department,year) VALUES
(111,'xxx','computer Science',4),
(112,'yyy','Information',3),
(113,'zzz','AI&DS',3),
(114,'CCC','Cyber Security',1);
SELECT * FROM Student;
UPDATE Student
SET name='odd',
department='bca',
year=2 WHERE reg_no=111;
INSERT INTO Student(reg_no,name,department,year)
values (145,'arun','mba',4);
ALTER TABLE Student
ADD phone_num VARCHAR(130);
update Student
set phone_num='9344894188' where reg_no=111;
update Student
set phone_num='8098555517' where reg_no=112;
update Student
set phone_num='8097878780' where reg_no=113;
update Student
set phone_num='8924758340' where reg_no=114;
update Student
set phone_num='8098555517' where reg_no=145;
SELECT * FROM Student;

SELECT COUNT(*)AS tot_student FROM Student
SELECT MAX(year) AS max_yr FROM Student
select min(year) as min_yr from Student
select avg(year) as avg_yr from Student
select department,count(*) as dep_count from Student group by department;

select * from Student
order by year asc
select * from Student
order by name;

select * from Student
order by department desc

select upper(department) as dep_upr from Student
select upper(name) as nam_upr from student
select left(name,2) as srt from Student
select name,length(name) as name_leng from Student

select concat(name,'---',department)as combine from Student
select name,year,year + 1 as next_yr from Student
select reg_no,mod(reg_no,2) as oder from Student

Alter table Student 
add date_details Date;

update Student
set date_details='2025-04-18' where reg_no=111;
update Student
set date_details='2025-04-18' where reg_no=112;
update Student
set date_details='2025-04-18' where reg_no=113;
update Student
set date_details='2025-04-18' where reg_no=114;
update Student
set date_details='2025-04-18' where reg_no=145;
select * from Student
update Student
set name='akash' where reg_no=145;

select curdate();
select reg_no,name,year(date_details) as yr from student
