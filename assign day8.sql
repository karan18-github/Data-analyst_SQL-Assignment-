#ques8
create table facility(facility_id int ,name varchar(30), state varchar(30),country varchar(30));
select * from facility;
alter table facility modify column facility_id int primary key auto_increment;
alter table facility add column city varchar(30) not null after name;

