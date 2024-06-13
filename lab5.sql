-- Drop column picture from staff.

alter table staff
drop column picture;

select *
from staff;

-- A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

select * from customer 
where first_name = 'TAMMY' and last_name = 'SANDERS';

insert into staff values (3,'TAMMY', 'SANDERS', 79, 'TAMMY.SANDERS@sakilacustomer.org', 2, 1, 'Tammy', 'NULL', '2006-02-15 04:57:20'); 

select *
from staff;


-- Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:

select customer_id from customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select * from customer
where customer_id=130;

insert into rental 
values (1650,'2024-06-11 20:52:35', 1,130,'2024-06-13 20:52:35',1, '2006-02-15 04:57:20');


-- Delete non-active users, but first, create a backup table deleted_users to store customer_id, email, and the date for the users that would be deleted. Follow these steps;
-- Check if there are any non-active users
-- Create a table backup table as suggested
-- Insert the non active users in the table backup table
-- Delete the non active users from the table customer


select customer_id, email, `active` 
from customer 
where active = 0;

 drop table if exists delete_users;
create table sakila.delete_users (
    customer_id int,
    email varchar(50),
    deletion_date timestamp default current_timestamp
);
select * from delete_users;

Insert into delete_users (customer_id, email)
values (16, 'SANDRA.MARTIN@sakilacustomer.org');
Insert into delete_users (customer_id, email)
values (64, 'JUDITH.COX@sakilacustomer.org');
Insert into delete_users (customer_id, email)
values (124, 'SHEILA.WELLS@sakilacustomer.org');
Insert into delete_users (customer_id, email)
values (169, 'ERICA.MATTHEWS@sakilacustomer.org');
Insert into delete_users (customer_id, email)
values (241, 'HEIDI.LARSON@sakilacustomer.org');
Insert into delete_users (customer_id, email)
values (271, 'PENNY.NEAL@sakilacustomer.org');
Insert into delete_users (customer_id, email)
values (315, 'KENNETH.GOODEN@sakilacustomer.org');
Insert into delete_users (customer_id, email)
values (368, 'HARRY.ARCE@sakilacustomer.org');
Insert into delete_users (customer_id, email)
values (406, 'NATHAN.RUNYON@sakilacustomer.org');
Insert into delete_users (customer_id, email)
values (446, 'THEODORE.CULP@sakilacustomer.org');
Insert into delete_users (customer_id, email)
values (482, 'MAURICE.CRAWLEY@sakilacustomer.org');
Insert into delete_users (customer_id, email)
values (510, 'BEN.EASTER@sakilacustomer.org');
Insert into delete_users (customer_id, email)
values (534, 'CHRISTIAN.JUNG@sakilacustomer.org');
Insert into delete_users (customer_id, email)
values (558, 'JIMMIE.EGGLESTON@sakilacustomer.org');
Insert into delete_users (customer_id, email)
values (592, 'TERRANCE.ROUSH@sakilacustomer.org');

select * from delete_users;

delete from customer
where active = 0;






