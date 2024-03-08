select * from orderdetails;

select SUM(quantityOrdered*priceEach) as Total_Revenue from orderdetails;

select SUM(quantityOrdered*priceEach)/COUNT(distinct orderNumber) as Avg_order_value
from orderdetails;

select SUM(quantityOrdered) as Total_cars_sold from orderdetails;

select COUNT(distinct orderNumber) as Total_orders from orderdetails;

select country, count(*) as customer_count from customers group by country
order by customer_count desc;

select DATE_FORMAT(orderDate, '%m') as month, count(*) as total_orders
from orders group by month order by month;

select productLine, SUM(quantityOrdered*priceEach)*100/
(select SUM(quantityOrdered*priceEach)
from orderdetails) from orderdetails inner join products on orderdetails.productCode=
products.productCode group by productLine;

select productName, SUM(quantityOrdered*priceEach) as Total_Revenue from products
inner join orderdetails on products.productCode=orderdetails.productCode
group by productName order by Total_Revenue desc limit 5;

select productName, SUM(quantityOrdered*priceEach) as Total_Revenue from products
inner join orderdetails on products.productCode=orderdetails.productCode
group by productName order by Total_Revenue asc limit 5;

select productName, SUM(quantityOrdered) as Total_Quantity from products inner join 
orderdetails on products.productCode=orderdetails.productCode group by productName
order by Total_Quantity desc limit 5;

select productName, SUM(quantityOrdered) as Total_Quantity from products inner join 
orderdetails on products.productCode=orderdetails.productCode group by productName
order by Total_Quantity asc limit 5;

