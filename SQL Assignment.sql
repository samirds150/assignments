#1.	Return all the products. Show name, unit price, new price(unit price *1.1)
SELECT name, unit_price, unit_price *1.1 as 'new price' FROM sql_inventory.products;
SELECT name,unit_price, unit_price *1.1 as 'new price' FROM sql_store.products;

#2.	Get the order placed in 2019
SELECT * FROM sql_store.orders
where order_date between '2019-01-01' and '2019-12-31';

#3.	From order_items tables, get the items for the order number6 where the total price >30
SELECT order_id,product_id,quantity,unit_price*quantity  FROM sql_store.order_items
WHERE order_id = 6 AND unit_price*quantity > 30;

#4.	Return products with quantity in stocks equal to 49,38,72
SELECT * FROM sql_store.products
WHERE quantity_in_stock=49 OR quantity_in_stock=38 OR quantity_in_stock=72;

#5.	Return customers born between 1/1/1990 and 1/1/2000
SELECT * FROM sql_store.customers
WHERE birth_date between '1990-01-01' and '2000-01-01';

#6.	Get the customers whose address contains Trail or Avenue
SELECT * FROM sql_store.customers
WHERE address regexp 'Trail|Avenue';

#7.	Get the customers whose phone numbers ends with 9
SELECT * FROM sql_store.customers
WHERE phone LIKE '%9';

#8.	Get the customers whose First names are elka or ambur
SELECT *FROM sql_store.customers
WHERE first_name='elka' OR first_name='ambur';

#10.Get the customers whose	Last name ends with EY or ON
SELECT * FROM sql_store.customers
WHERE last_name LIKE '%EY' OR last_name LIKE '%ON';

#11.Get the customers whose	Last name starts with MY or contains SE
SELECT * FROM sql_store.customers
WHERE last_name regexp '^MY|SE';

#12.Get the customers whose	Last name contains b followed by R or U
SELECT * FROM sql_store.customers
WHERE last_name regexp 'b[RU]';

#13.	Get the orders that are not shipped
SELECT  order_id,customer_id,status,order_status_id,name as final_status FROM sql_store.orders o
join sql_store.order_statuses os
on o.status =os.order_status_id
WHERE status=2;

#14.	Start order times by order_id = 2 descending orders as per their total price
SELECT order_id,product_id,quantity,unit_price,quantity*unit_price as total_price FROM sql_store.order_items
WHERE order_id=2
order by total_price DESC;

#15.	Get the top 3 loyal customers
SELECT * FROM sql_store.customers 
order by points desc
limit 3;

#16.	Join order_items table with products
SELECT * FROM sql_store.order_items OI
join products p
on OI.product_id=p.product_id;


#17.	In sql_invoicing join 3 tables payment, client, payment_methods and show name of the client and payment method
SELECT c.name,pm.name as payment FROM sql_invoicing.payments p
join sql_invoicing.clients c
on p.client_id=c.client_id
join sql_invoicing.payment_methods pm
on p.payment_method=pm.payment_method_id;

#18.	Join product with order_items table and show product_id, product name, and quantity
SELECT p.product_id,p.name,OI.quantity FROM sql_store.order_items OI
join sql_store.products p 
on OI.product_id=p.product_id;

#19.	Get all rows with these columns – order_date, order_id, first_name, shipper, status
SELECT order_id,order_date,first_name,s.name as shippers,os.name as final_status FROM sql_store.orders o
join sql_store.customers c 
on o.customer_id=c.customer_id
left join sql_store.shippers s 
on o.shipper_id=s.shipper_id
left join sql_store.order_statuses os
on o.status=os.order_status_id;

#20.	Write a query from sql_invoicing to get date, client name, amount, payment method
SELECT c.name,p.date,p.amount,payment_method,pm.name as payment_method_name FROM sql_invoicing.clients c 
join sql_invoicing.payments p 
on c.client_id=p.client_id
join sql_invoicing.payment_methods pm
on p.payment_method=pm.payment_method_id;

#21.	Get customer_id, first_name, points, type 0-1000 bronze, 2000-3000 silver and 3000> gold
SELECT customer_id,first_name,points type,'Bronze'as type  FROM sql_store.customers
where points <=1000
union
SELECT customer_id,first_name,points type,'Silver'as type  FROM sql_store.customers
where points between 2000 and 3000
union
SELECT customer_id,first_name,points type,'Gold'as type  FROM sql_store.customers
where points >=3000;


