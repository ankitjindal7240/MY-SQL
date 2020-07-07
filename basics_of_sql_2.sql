create database amazon_costumers;
use amazon_costumers;
drop table costumer_details;
create table costumer_details(
mobile_no int primary key,
# 10 digit moile no is not accepted : out of range value
name varchar(15),
age int,
gender char(6),
joined date,
# int ki length dene pe warning de rha hai
aadhar_num int);
alter table costumer_details modify name varchar(15) not null;
desc costumer_details;
alter table costumer_details modify aadhar_num int unique;
insert into costumer_details values (7,'ankit',20,'male','2020-01-01',null);
# diffrance between value and values
insert into costumer_details value (8,'ankit',20,'male','2020-01-01',null);
insert into costumer_details values (1,'tannu',19,'female','2020-01-02',45678);
insert into costumer_details values (2,'girish',30,'male','2021-01-01',null);
insert into costumer_details values (3,'nandini',18,'male','2019-01-01',null);
insert into costumer_details values (4,'ankit',20,'male','2020-01-01',null);

select * from costumer_details;
select * from costumer_details where mobile_no in (1,10);
select * from costumer_details where mobile_no =5;
select * from costumer_details where name ='ankit';
select * from costumer_details where name like '%n%';
select * from costumer_details where mobile_no between 1 and 10;

