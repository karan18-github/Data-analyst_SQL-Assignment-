#Day4
#question1
select * from orders;
select ordernumber,status,ifnull(comments,"-") as comment from orders ;

#question2
select * from employees;
select employeenumber,firstname,jobtitle, case
when jobtitle ="president" then "P"
when   jobtitle like"%vp%" then "VP"
when   jobtitle like "%sale manager%" then "SM"
when   jobtitle like "%sales manager%" then "SM"
when   jobtitle like "%sales rep%" then "SR"
end as jobtitle_abbr
from employees;
