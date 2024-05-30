use project_db;
select * from car_sales;

-- Total sales------
select sum(price) as Total_sales from car_sales;

-- Average Price -----
Select avg(price) as Average_price_of_car from car_sales;

-- Number of cars sold------
Select count(Car_id) as Total_cars_sold from car_sales;

-- Dealer Region wise sales-----
select Dealer_Region,sum(Price)/1000000 as Sales_in_millions
 from car_sales group by Dealer_Region order by sum(Price) desc;

 -- Gender wise car sales count---
 select Gender ,count(Car_id) as cars_sold from car_sales group by Gender;

 -- Company wise sales--
select Company,sum(Price) as Total_sales from car_sales group by Company 
order by sum(Price) desc;

 -- Year wise sales --   
SELECT EXTRACT(YEAR FROM Date) AS year, SUM(Price) AS total_sales
FROM car_sales
GROUP BY EXTRACT(YEAR FROM Date);




