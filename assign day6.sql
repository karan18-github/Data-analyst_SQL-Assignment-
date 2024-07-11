#ques1
create table journey( bus_id int not null,
bus_name varchar(30) not null,
source_station varchar(30) not null,
destination varchar(30) not null,
email varchar(30) unique );
select * from journey;




#ques 2
create table vendor( vendor_id int primary key
,name varchar(30) not null
,email varchar(30) unique,
country varchar(30) default'N/A');
select * from vendor;

#ques3 
create table movies(movie_id int primary key,
name varchar(30) not null,
release_year  varchar(30)  default'-',
cast varchar(30) not null,
gender varchar(30)  check(gender in("male","female")), 
no_of_shows int check(no_of_shows>0));

#ques4
#a
create table Product(Product_ID int auto_increment primary key,
Product_Name varchar (30)
unique not null, Description varchar (50),
Supplier_ID int);
 desc Product;

#b
Create table Suppliers(Supplier_ID int auto_increment primary key, Supplier_Name varchar (30), Location varchar (20));
desc Suppliers;

#c
Create table Stock(ID int auto_increment primary key, Product_Id int, Balance_Stock int); 
desc Stock;

Alter table Product add foreign key (Supplier_ID) references Suppliers(Supplier_ID) on update cascade on delete cascade;
Alter table stock add foreign key (Product_ID) references product(Product_ID) on update cascade on delete cascade;


