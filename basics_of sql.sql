create database college;
use college;
create table students( name varchar(30) ,branch varchar(40));
desc students;
select * from students;
insert into students (name,branch) values('ankit','cs');
insert into students (name,branch) values('tanu','it');
create database college_2;
use college_2;
create table teachers(name varchar(30),branch varchar(15));
insert into teachers (name,branch) values('girish','cs');
select * from teachers;
use college;
select * from students;


