# drop database students;
create database students;
use students;

create table student(
s_id int(11) primary key,
s_name varchar(20));

create table marks(
school_id int(11) primary key,
s_id int(11),
score int(11),
status varchar(20));

create table details(
address_city varchar(20),
email_id	varchar(20),
school_id int(11),
accomplishments varchar(50));

insert into student values (1,"jack"),(2,"rithvik"),(3,"jaspreet"),(4,"praveen"),(5,"bisa"),(6,"suraj");

insert into marks values
(1004,1,23,"fail"),
(1008,6,95,"pass"),
(1012,2,97,"pass"),
(1016,7,67,"pass"),
(1020,3,100,"pass"),
(1025,8,73,"pass"),
(1030,4,88,"pass"),
(1035,9,13,"fail"),
(1040,5,16,"fail"),
(1050,10,53,"pass");

insert into details values
("banglore ", "jsingh@geeks.com",1020 ,"ACM ICPC selected"),
("Hyderabad", "praveen@geeks.com",1030 , "Geek the month "),
("delhi", "rithvik@geeks.com",1012 , "IOI finalist "),
("chenni ", "om@geeks.com",1111 , "Geek of the year "),
("banglore ", "suraj@geeks.com",1008 , "IMO finalist "),
("mumbai ", "sasukeh@geeks.com",2211 , "Made a robot "),
("ahemabad ", "itachi@geeks.com",1172 , "Code Jam finalist ");

# Q2
-- 2.A
select a.s_name ,b.score ,c.address_city from
 student a inner join marks b on a.s_id =b.s_id 
 left join details c on b.school_id=c.school_id ;
 -- NOT INCLUDING STUDENTS WITHOUT CITY
 select a.s_name ,b.score ,c.address_city from
 student a inner join marks b on a.s_id =b.s_id 
 inner join details c on b.school_id=c.school_id ;
 
 -- 2.B
 select a.s_name ,c.email_id from
 student a inner join marks b on a.s_id =b.s_id 
 left join details c on b.school_id=c.school_id ;
 
 -- 2.c
# select a.s_name   from student a left join marks b on a.s_id=b.s_id where  b.status = "pass"  

-- 2.d
 select a.s_name ,c.email_id from
 student a inner join marks b on a.s_id =b.s_id 
 inner join details c on b.school_id=c.school_id where accomplishments ="IMO finalist " ;
 
 -- 2.e
select distinct address_city from details;

-- 3.a
select score from marks where score >(select score from marks where s_id=6);

-- 3.b
select 
(select count(school_id) from marks)+
(select count(school_id) from details)-
(select count(a.school_id) from marks a  join details b on a.school_id =b.school_id ) ;

-- 3.c
select count(address_city) from details where address_city ="banglore ";

-- 3.d 
select s_name from student where s_name like"%s_";

-- 3.e

select S_NAME, SUBSTRING(s_name,1,2)  from student ;

-- 4.a
SELECT email_id from details where accomplishments like"%geek%";

-- 4.b
select a.s_name ,b.status from student a  inner  join  marks b on a.s_id =b.s_id where b.school_id in (1004, 1012 ,1016);

-- 4.c
select a.s_name ,b.score from student a  inner  join  marks b on a.s_id =b.s_id where b.score between 80 and 90;

-- 4.d
#

-- 4.e
select avg(score) from marks;
