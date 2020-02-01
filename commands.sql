--create a table and schema:

create table Stock
(
	Id int Primary Key identity(1,1),
	Name varchar(50),
	Price float,
	DateOfPrice date
)

-- get all data froma table

select *
from Stock

--update table
update Stock
Set DateOfPrice='2020-02-01'
where Name = 'AAPL'
and Price = 309.51

--delete a table
DROP TABLE Stock;

--delete all data from a table
DELETE Stock;
