--Task
--create a enum type and alter table to give constraint of new domain type.			

create table bank_account_type (
id serial, 
first_name varchar,
last_name varchar,
birth_year int,
gender varchar,
status varchar
)

select * from bank_account_type

insert into bank_account_type (first_name, last_name, birth_year, gender, status) values 
('yash','chaudhari', '1999','male', 'active'),
('riya','Rathod', '2002','female', 'inactive'),
('sameer','thakre', '2001','male', 'active')

create type status_type as enum ('active', 'inactive')

--alter table to give constraint of new domain type.

alter table bank_account_type
alter column status type status_type
using status::status_type

--create a conditional query with enum type

SELECT *,
case 
WHEN status = 'active' THEN 'active_user'
WHEN status = 'inactive' THEN 'inactive_user' 
ELSE 'suspended_ac' end as User_type
FROM bank_account_type
