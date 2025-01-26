use dbms;

create table students(
first_name varchar(50),
last_name varchar(50),
student_id int,
student_email varchar(50),
dept varchar(10)
);

insert into students(first_name, last_name, student_id, student_email, dept)
values("rasheduzzaman", "rakib", 120080, "120080@cse.diu.ac.bd", "cse");

select *
from students;