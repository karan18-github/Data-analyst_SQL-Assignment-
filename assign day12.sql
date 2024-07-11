#1---
select * from orders;
select * from orders;
select
year (orderdate) as "Year", monthname(orderdate) as "month", 
count(ordernumber) as "Total Orders",
 concat(round( ((count(ordernumber) -lag(count(ordernumber), 1) over ()) /lag(count(ordernumber),1) over ()) * 100), "%") 
 as "% Yoy Change" from Orders group by year, month;
  
#2---
create table emp_udf(Emp_ID int auto_increment primary key, Name varchar(80), DOB date);
INSERT INTO Emp_UDF(Name, DOB)
VALUES ("Piyush", "1990-03-30"), ("Aman", "1992-08-15"), ("Meena", "1998-07-28"), 
("Ketan", "2000-11-21"), ("Sanjay", "1995-05-21");
select * from emp_udf;

select classicmodels.calculate_age('1990-03-30');
