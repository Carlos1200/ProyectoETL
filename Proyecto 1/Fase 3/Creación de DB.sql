Create database Supermarket
go
Use Supermarket 
go

Create table Sales(
ID char(11) not null unique,
Branch char(1) not null,
City varchar(20),
Customer_type char(6) not null,
Gender varchar(6) not null,
Product_line varchar(50) not null,
Unit_price money not null,
Quantity int not null,
Tax money not null,
Total_price money not null,
Date_purchase date not null,
Time_purchase time(0) not null,
Payment varchar(50) not null,
Cogs money not null,
Gross_margin float not null, 
Gross_income money not null, 
Rating real not null 
)

BULK INSERT Sales
From 'C:\supermarket_sales.csv'
With
(
	Fieldterminator = ',',
	Rowterminator = '\n'
)

Drop table Sales
Select*from Sales