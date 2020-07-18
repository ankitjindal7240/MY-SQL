create database college;
use  college;
drop table department;
create table department(
  department varchar(30) primary key,
  budget int(11));
create table instructor(
INSTRUCTORID int(11),
NAME Varchar(30),
DEPARTMENT Varchar(30),
SALARY int(11),
foreign key (DEPARTMENT) references department(department));

insert into department values ("computer science" ,100000);
insert into department values ("Electrical",80000);
insert into department values ("Humanities",50000);
insert into department values("Mechanical",40000);
insert into department values ("Information Technology",90000);
insert into department values ("Civil",60000);
insert into instructor values (44547,"smith","Computer Science",95000);
insert into instructor values (44541,"bill","electrical",55000);
insert into instructor values (47778,"sam","humanities",44000);
insert into instructor values (48147,"erik","Mechanical",80000);
insert into instructor values (441547,"melisa","Information Technology",65000);
insert into instructor values (48898,"jena","civil",50000);
select * from instructor;

-- question 1
select *  from instructor where salary> (select avg(budget) from department);
select department from department where budget >50000;
select INSTRUCTORID from instructor where length(INSTRUCTORID) =6;
select a.name ,b.* from instructor a ,department b where a.department=b.department;
select * from instructor where department like "%science" ;

