use dbms;

create table departments
(
	department_id int primary key,
    department_name varchar (50),
    location varchar (50)
);

insert into departments (department_id, department_name, location)
values
(1, 'cse', 'dhaka'),
(2, 'eee', 'khulna'),
(3, 'mecha', 'rangpur');

create table employees
(
	employee_id int primary key,
    first_name varchar (50),
    last_name varchar (50),
    salary int,
    department_id int,
    foreign key (department_id) references departments(department_id)
);

insert into employees (employee_id, first_name, last_name, salary, department_id)
values
(1, 'rashed', 'zaman',20000, 2),
(2, 'maliha', 'zaman', 30000, 3),
(3, 'maisha', 'zaman', 40000, 1);

insert into employees (employee_id, first_name, last_name, salary, department_id)
values
(4, 'jaima', 'rahman',20000, 2);


create table projects 
(
	projects_id int primary key,
    projects_name varchar (50),
    budget int ,
    department_id int,
    foreign key (department_id) references departments (department_id)
);

insert into projects(projects_id, projects_name, budget, department_id)
values 
(1, 'abc', 1000, 1),
(2, 'xyz', 3500, 2),
(3, 'lmo', 4523, 3);


-- 1
select first_name, last_name, salary
from employees
where first_name like '%j%';


-- 2
select department_name
from departments
where location = 'dhaka';

-- 3
select projects_name, budget
from projects
order by budget desc;

-- 4
select first_name
from employees
where salary > 75000 and department_id != 3;


-- 5
select max(salary)
from employees
where salary < (select max(salary)
			   from employees);
			