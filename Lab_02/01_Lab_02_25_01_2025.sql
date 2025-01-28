create database dbms;


use dbms;
CREATE TABLE St_Info
(
	roll INT,
    name varchar(50),
    dept VARCHAR(50)
);

INSERT INTO St_Info (roll, name, dept)
values  (1, "asraful", "cse"),
		(1, "rashed", "eee"),
        (1, "gulto", "BBA");

select *
from students;
-- 
