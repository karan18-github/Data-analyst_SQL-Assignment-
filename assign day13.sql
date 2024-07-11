#day13 
#1---
select * from Customers;
select * from orders;

select customerNumber, customerName from customers where customerNumber not in
(select customerNumber from orders);

#2---
select * from customers;
select * from orders;

select c.customerNumber, c.customerName, count(o.orderNumber) as "Total Orders"
from Customers c
left join orders o on c.customerNumber = o.customerNumber
group by c.customerNumber, c.customerName
union
select c.customerNumber, c.customerName, 0 as "Total Orders" from customers c
where c.customerNumber not in(select distinct customerNumber from orders)

union
select o.customerNumber, null as customerName, count(o.orderNumber) as "Total Orders"
from orders o
where o.customerNumber not in (select distinct customerNumber from customers)
group by o.customerNumber;

#3---
select ordernumber, max(quantityOrdered) as Quantityorders 
 from orderdetails o where quantityOrdered <(select max(quantityOrdered) from orderdetails od where od.orderNumber= o.orderNumber)
 group by ordernumber;
#4---
select * from orderdetails;
select orderNumber, count(orderNumber) as Total_Product
from orderdetails group by orderNumber
having count(orderNumber)>0;

select MAX(Total_Product) as "Max(Total)",
MIN(Total_Product) as "Min(Total)" from 
(select orderNumber, count(orderNumber) as Total_Product
from orderdetails group by orderNumber
having count(orderNumber)>0) as Product_Count;


#5
select * from products;

select productline, avg(buyPrice) from products group by productLine;
select productLine, count(*) as Total from products where buyPrice>
(select avg(buyPrice) from products) group by productLine;


