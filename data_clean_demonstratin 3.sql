create database Data_Clean_Demonstration_3;

select * from Data_Clean_Demonstration_3.data_cleaning_old;
-- We have our table, but let's make a new one. 

create table data_cleaning_NEW as
select * from Data_Clean_Demonstration_3.data_cleaning_old;

select * from data_cleaning_NEW;

-- Let's fix the inconsisentnces of the Country column

select country from data_cleaning_NEW;

update data_cleaning_New
set country = 'USA'
where country in ('usa', 'U.S.A', 'US');

-- Now let's fix the gender column,

select gender from data_cleaning_new;

update data_cleaning_new
set gender = 'Male'
where gender in ('M', 'male');

update data_cleaning_new
set gender = 'Female'
where gender in ('F');


-- Let's capitlize the status column,

select status from data_cleaning_New;

update data_cleaning_new
set `status` = 'DELIVERED'
where `status` in ('delivered', 'Delivered');

update data_cleaning_new
set `status` = 'SHIPPED'
where `status` in ('shipped', 'Shipped', 'SHUPPED');


update data_cleaning_new
set `status` = 'CANCELLED'
where `status` in ('Cancelled', 'cancelled');


update data_cleaning_new
set `status` = 'PENDING'
where `status` in ('Pending');

-- Let's just capitlie the Product column too. 

select product from data_cleaning_new;


update data_cleaning_new
set product = 'Headphones'
where product in ('headphones', 'HeadPhones');


update data_cleaning_new
set product = 'Bluetooth Speaker'
where product in ('bluetooth speaker');

update data_cleaning_new
set product = 'Smart Watch'
where product in ('Smart watch');


-- Let's clean the dates. (This one is tricky!)

update data_cleaning_new
set `order date` = '1/5/2024'
where `order date` = '2024-1-5';

update data_cleaning_new
set `order date` = '7/1/2024'
where `order date` in ('2024/01/07', '7-1-2024');

update data_cleaning_new
set `order date` = '7/1/2024'
where `order date` in ('2024/01/07', '7-1-2024');

select `order date` from data_cleaning_new;


-- Age column.
update data_cleaning_new
set Age = '30'
where age = 'thirty';


select age from data_cleaning_new;


-- Okay, I think that is good for now.