#question 1
select * from customers;
select customernumber, customername, state ,creditlimit from customers order by creditlimit desc;

#question 2
select * from productlines;
select productline from productlines where productline like "%cars%";


