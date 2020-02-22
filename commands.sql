--creating a table and schema:

create table Stock
(
	Id int Primary Key identity(1,1),
	Name varchar(50),
	Price float,
	DateOfPrice date
)

-- get all data from a table

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


INSERT INTO Stock (Symbol, Last_Price, Change, Change_Percentage, Currency, Market_Time, Volume, Average_Volume, Market_Cap, ScrapeDate)
VALUES ('AAPL','2000', '.5', '1%', 'USD', '4:00', '1000', '450', '10000', '2/20/2020');

--Delete and reseed table
DELETE FROM Stock;
DBCC CHECKIDENT (Stock, RESEED, 0);
