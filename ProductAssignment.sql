create database DotNetAssignment

use DotNetAssignment

--Create a table Product as per the following specifications
create table ProductTable(
ProductID int not null primary key identity(1,1),
Descript varchar(30) not null UNIQUE,
SetQty int default 1 check (SetQty in (1,5,10)),
Rate Decimal(10,2) check(Rate BETWEEN 51 and 5000),
)
drop table ProductTable
truncate table ProductTable
--2) Insert 20 records in the above Product table 
insert into ProductTable values('Zara',5,2000)
insert into ProductTable values('H&M',5,1000)
insert into ProductTable values('Moda Rapido',1,1200.8)
insert into ProductTable values('Roadster',1,568.98)
insert into ProductTable values('Van Heusan',10,458)
insert into ProductTable values('Vero Moda',5,2345)
insert into ProductTable values('Gas',10,3500)
insert into ProductTable values('Only',5,2521)
insert into ProductTable values('Code',10,452)
insert into ProductTable values('Levis',1,500)
insert into ProductTable values('Chanel',5,2541)
insert into ProductTable values('Armani',10,1236)
insert into ProductTable values('Hermes',5,4521)
insert into ProductTable values('Harpa',1,2520)
insert into ProductTable values('Gucci',5,3012.45)
insert into ProductTable values('Tommy Hilfiger',5,1254)
insert into ProductTable values('Arrow',1,3527)
insert into ProductTable values('Allen Solly',10,1002)
insert into ProductTable values('Forever 21',5,1200)
insert into ProductTable values('Besiva',10,1250)

--Update all the rates with 10% rate hike. 
update ProductTable set Rate=Rate*1.1 from ProductTable

--Delete last record by providing the ProductID. 
Delete from ProductTable where ProductID=20

--Alter the above table and add the following column
alter table ProductTable  add MarginCode char(1) check(MarginCode in('A','B',null))

--Update few records to set MarginCode to A and some records MarginCode to B 
update ProductTable set  MarginCode='A' where ProductID=5
update ProductTable set  MarginCode='A' where ProductID=1
update ProductTable set  MarginCode='A' where ProductID=18
update ProductTable set  MarginCode='A' where ProductID=15

update ProductTable set  MarginCode='B' where ProductID=2
update ProductTable set  MarginCode='B' where ProductID=10
update ProductTable set  MarginCode='B' where ProductID=6
update ProductTable set  MarginCode='B' where ProductID=19
update ProductTable set  MarginCode='B' where ProductID=11

--Update all the SetQty to 10 for all Items which have MarginCode A and whose original SetQty is 1. 
update ProductTable set  SetQty=10 where MarginCode='A' AND SetQty=1
select * from ProductTable