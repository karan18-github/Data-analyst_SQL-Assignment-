#assign10
select * from products;
select * from orders;
select * from orderdetails;

create view  product_status as
select year(o.orderdate),
concat(round (count(od.quantityordered*od.priceeach))),
'(',
round((sum(od.quantityordered*od.priceeach)/sum(sum(od.quantityordered*od.priceeach)) over ())*100),'%)' as total_values 
from orders as o  join orderdetails as od on o.ordernumber=od.orderNumber
group by year(o.orderdate);

select * from product_status;