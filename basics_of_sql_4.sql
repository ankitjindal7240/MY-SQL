create database zomato;
use zomato;
create table costumers(
custID INT PRIMARY key,
name varchar(20) not null,
phone_no varchar(10) not null);

create table hotels(
hotelid int primary key,
name varchar(15),
area varchar(20));

create table orders(
order_id int primary key,
custid int,
amount int,
hotelid int,
foreign key (custid) references costumers(custid),
foreign key (hotelid) references hotels(hotelid));

insert into costumers values(1,"ankit","1234");
insert into costumers values(2,"tannu","2345");
insert into costumers values(3,"girish","2345");
insert into costumers values(4,"sandeep","2346");

insert into hotels values
(1,"a","area1"),(2,"b","area2"),(3,"c","area3");

insert into orders values
(1,1,100,1),(2,1,200,3),(3,3,500,2);

select * from orders;

-- phone no of order id 3--
select phone_no from costumers where custid in (select custid from orders where order_id =3);


select a.*,b.* from costumers a inner join orders b  order by b.order_id;
select a.*,b.* from costumers a inner join orders b   on a.custid=b.custid ;
select a.*,b.* from costumers a inner join orders b   on a.custid=b.custid order by phone_no;
select a.*,b.* from costumers a inner join orders b   on a.custid=b.custid  where amount = 100 ;
select a.*,b.* from costumers a inner join orders b   on a.custid=b.custid  where orders.order_id=2 ;


-- hotel name and costumer name for order id 1
select * from costumers a inner join orders b on a.custid=b.custid inner join hotels c on b.hotelid=c.hotelid ;
select * from costumers a inner join orders b on a.custid=b.custid inner join hotels c on b.hotelid=c.hotelid order by order_id;
select * from costumers a inner join orders b on a.custid=b.custid inner join hotels c on b.hotelid=c.hotelid where order_id=1;

select * from costumers a left join orders b on a.custid = b.custid;
select * from costumers a right join orders b on a.custid = b.custid;


-- name of costumers who have not placed any orer
select * from costumers a left join orders b on a.custid = b.custid  where order_id is null;

 -- Get me customer name who have placed highest orders
# select * from costumers a right join orders b on a.custid = b.custid where  ;

create table employee(
	 empId INT primary key,
	 name varchar(20),
	 phonenum varchar(15),
     mgrId INT,
     FOREIGN KEY (mgrId) REFERENCES employee(empId)
 );
 
insert into employee values
 (1, 'Anoop', '1234', null),
 (2, 'Jatin', '4578', 1);
 
 -- jatin's manager name 
 
 -- Without join
select name from employee where empid=(select mgrid from employee where name="jatin");

-- With join 
select b.name from employee a inner join employee b on  a.mgrid = b.empid where a.name="jatin"; 
