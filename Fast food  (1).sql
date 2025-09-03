select count(*) from balaji_fast_food_sales ;

select * from balaji_fast_food_sales  ;

-- cleaning

-- chaek double 
select order_id , count(*)
from balaji_fast_food_sales ffs 
group by order_id 
having count(*) > 1;

-- no double 

-- cheak null data 

SELECT *
FROM balaji_fast_food_sales ffs
WHERE ffs.order_id = '' OR ffs.order_id IS NULL
   OR ffs.date = '' OR ffs.date IS NULL
   OR ffs.item_name = '' OR ffs.item_name IS NULL
   OR ffs.item_type = '' OR ffs.item_type IS NULL
   OR ffs.item_price = '' OR ffs.item_price IS NULL
   OR ffs.quantity = '' OR ffs.quantity IS NULL
   OR ffs.transaction_amount = '' OR ffs.transaction_amount IS NULL
   OR ffs.transaction_type = '' OR ffs.transaction_type IS NULL
   OR ffs.received_by = '' OR ffs.received_by IS NULL
   OR ffs.time_of_sale = '' OR ffs.time_of_sale IS NULL;

-- we have nulls in transaction type 

-- fix data 

-- replace nulls with unknown 

update balaji_fast_food_sales ffs 
set transaction_type = "unknown"
where ffs.transaction_type = "" or ffs.transaction_type is null;

describe balaji_fast_food_sales;

-- fix date 
alter table balaji_fast_food_sales 
add column order_date date;


UPDATE balaji_fast_food_sales
SET date = TRIM(date)
WHERE date IS NOT NULL;

UPDATE balaji_fast_food_sales
SET order_date = STR_TO_DATE(date, '%m/%d/%Y')
WHERE date LIKE '__/__/____';


UPDATE balaji_fast_food_sales
SET order_date = STR_TO_DATE(date, '%Y-%m-%d')
WHERE date LIKE '____-__-__';


UPDATE balaji_fast_food_sales
SET order_date = STR_TO_DATE(date, '%d-%m-%Y')
WHERE date LIKE '__-__-____';

UPDATE balaji_fast_food_sales
SET order_date = STR_TO_DATE(date, '%m-%d-%Y')
WHERE date LIKE '__-__-____';

update balaji_fast_food_sales
SET order_date = STR_TO_DATE(date, '%c/%e/%Y')
where order_date is null  
  and date like  '%/%/%';


select order_date from balaji_fast_food_sales ffs 
where order_date is null;

alter table balaji_fast_food_sales 
drop column `date`;

-- make reversed by male and female 
update balaji_fast_food_sales ffs 
	set received_by =
	 case 
	 	when received_by = "Mr." then "Male"
	 	when received_by = "Mrs." then "Female"
	 end
;

select received_by from balaji_fast_food_sales ffs ;


select * from balaji_fast_food_sales bffs ;



