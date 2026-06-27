CREATE database walmart_sales;

show databases;

use walmart_sales;

CREATE TABLE walmart(
Store INT,
Date VARCHAR(20),
Weekly_Sales DECIMAL(12,2),
Holiday_Flag INT,
Temperature DECIMAL(6,2),
Fuel_Price DECIMAL(6,3),
CPI DECIMAL(10,3),
Unemployment DECIMAL(5,3)
);

SELECT * FROM walmart;

select Store, Unemployment, Fuel_price from walmart; 

SUM
select sum(Weekly_Sales)
from walmart;

AVERAGE
select avg(Weekly_Sales)
from walmart;

MAX
SELECT MAX(Weekly_Sales)
FROM walmart;

MINIMUN
select min(Weekly_Sales)
from walmart;

COUNT
select count(*) from walmart;
select count(Weekly_Sales) from walmart;

TOP 10 Stores Query:
SELECT Store,
SUM(Weekly_Sales) TotalSales
FROM walmart
GROUP BY Store
ORDER BY TotalSales DESC
LIMIT 10;

Holidays Sales:
SELECT Holiday_Flag,
SUM(Weekly_Sales) Sales
FROM walmart
GROUP BY Holiday_Flag;

Average Sales:
SELECT Store, AVG(Weekly_Sales)
FROM walmart
GROUP BY Store;

select Store, Sum(Weekly_Sales)
from walmart
group by Store;

Rank Store:
SELECT Store,
SUM(Weekly_Sales) AS TotalSales,
RANK() OVER(
ORDER BY SUM(Weekly_Sales) DESC
) AS StoreRank
FROM walmart
GROUP BY Store;
