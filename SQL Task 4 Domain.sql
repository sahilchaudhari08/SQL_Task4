--Task 4
--create a domain and alter table to give constraint of new domain type.				

create table cust_domain (
customer_id serial, 
first_name varchar,
last_name varchar,
email varchar, 
phone_number int,
address varchar
)

create domain positive_int as int check (value > 0)

select * from cust_domain

--alter table to give constraint of new domain type.

alter table cust_domain alter column phone_number type positive_int
