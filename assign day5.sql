#day5
#question1
select * from payments;
select  year(paymentdate) as years ,min(amount) from payments group by  years order by years;

#question2
select * from orders;
select year(orderdate) as years,
concat("Q",Quarter(orderdate)) as quarter , 
count(distinct customerNumber) as unique_customers,
count(ordernumber) as total_orders
from orders  group by years,quarter order by years;



#question3
select * from payments;
select date_format(paymentDate,'%b') as Month,
concat(format(sum(amount)/1000,0),"K") as Formatted_Amount
from Payments Group by Month having Sum(amount) between 500000 and 1000000
order by sum(amount) desc;