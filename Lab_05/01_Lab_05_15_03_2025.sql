use dbms;

CREATE TABLE Employee 
(
    e_id INT PRIMARY KEY,
    e_name VARCHAR(100) NOT NULL,
    salary double
);


CREATE TABLE Department 
(
    d_id INT PRIMARY KEY,
    d_name VARCHAR(100) NOT NULL,
    e_id int,
    foreign key(e_id) references Employee(e_id)
);


INSERT INTO Employee (e_id, e_name, salary)
VALUES
(1, 'John Doe', 50000),
(2, 'Jane Smith', 55000),
(3, 'Emily Johnson', 60000),
(4, 'Michael Brown', 45000);

INSERT INTO Department (d_id, d_name, e_id)
VALUES
(1, 'Human Resources', 1),
(2, 'IT', 2),
(3, 'Finance', 3),
(4, 'Marketing', 4);

select employee.e_id, employee.e_name, department.d_name, employee.salary
from employee
join Department
on Employee.e_id = Department.e_id;