#day7
select * from employees;
select * from customers;
#1-
select employeenumber,concat(firstname," ",lastname),
count(distinct customername) 
as unique_customer from employees as e  join customers as c on e.employeenumber=c.salesrepemployeenumber
group by employeenumber
 order by unique_customer desc;
 
 #2-
 select * from customers;
 select * from orders;
 select * from orderdetails; 
 select * from products;
 
 select customers.customernumber ,customers.customername,products.productcode,products.productname,
 sum(orderdetails.quantityOrdered) as ordered_quantity,
 sum(products.quantityinstock) as total_inventory,
 sum(products.quantityinstock-orderdetails.quantityOrdered) as left_qty
 from customers inner join orders
 on customers.customerNumber=orders.customerNumber
 inner join orderdetails on  orders.orderNumber=orderdetails.orderNumber 
 inner join products on orderdetails.productCode=products.productCode
 group by customers.customernumber ,products.productCode 
 order by customers.customernumber asc;
 
 
 #3
 create table laptop( laptop_name varchar(20));
 create table colours(colour_name varchar(30));
 insert into laptop values("del"),("hp");
 insert into colours values("white"),("silver"),("black");
 select * from laptop;
 select * from colours;
 select laptop_name,colour_name from laptop cross join colours order by laptop_name asc;
 
 #4
 create table project(employeeID int,fullname varchar(30),gender varchar(30),managerID 	int);
 select * from project;
 INSERT INTO Project VALUES(1, 'Pranaya', 'Male', 3);
INSERT INTO Project VALUES(2, 'Priyanka', 'Female', 1);
INSERT INTO Project VALUES(3, 'Preety', 'Female', NULL);
INSERT INTO Project VALUES(4, 'Anurag', 'Male', 1);
INSERT INTO Project VALUES(5, 'Sambit', 'Male', 1);
INSERT INTO Project VALUES(6, 'Rajesh', 'Male', 3);
INSERT INTO Project VALUES(7, 'Hina', 'Female', 3);
select * from project;
select  mgr.fullname as manager_name,emp.fullname as emp_name from project as mgr   join  
project as emp on mgr.employeeid=emp.managerid order by manager_name ;

 
 
 