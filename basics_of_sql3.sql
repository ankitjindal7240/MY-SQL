create database IIT;
use iit;
create table colleges(
 college_rank int primary key,
 location varchar(15),
 no_of_seats int);
 
create table dept (
	deptId INT primary key,
    name varchar(25),
    HOD varchar(40)
);
insert into dept values(1 , "python","girish");
insert into dept values(2 , "sql","sandeep");
insert into dept values(3 , "dynamic programming","sandeep");

create table books(
book_no int primary key AUTO_INCREMENT,
name varchar(20),
department int not null,
foreign key (department) references dept(deptid)
);
select * from books;
insert into books values(1,"book1",1);
insert into books values(2,"book1",1);
insert into books values(4,"book1",2);
insert into books values(5,"book1",2);
insert into books values(6,"book1",2);
insert into books values(7,"book1",2);
insert into books values(9,"book2",2);
insert into books values(11,"book3",3);

insert into books (name,department) values("book1",2);
select * from dept where deptid =(select department from books where book_no=7);
select * from dept where deptid =(select department from books where name ="book2");

update books set department =3 where department =2;
delete from dept where deptId=1;

# join 

