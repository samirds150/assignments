--  1.Return all the products. Show name, unit price, new price(unit price *1.1)
select name,unit_price,unit_price*1.1 as new_price from sql_store.products p1
natural join sql_store.products p2
-- 2. Get the order placed in 2019
select * from sql_store.orders
where order_date >='2019-01-01'
-- 3. From order_items tables, get the items for the order number6 where the total price >30
SELECT i1.order_id , i2.name , i1.quantity * i1.unit_price as total_price  FROM sql_store.order_items i1
join sql_store.products i2
on i1.product_id = i2.product_id
where order_id='6'and i1.quantity * i1.unit_price >'30'
-- 4.Return products with quantity in stocks equal to 49,38,72
SELECT * FROM sql_store.products
WHERE  quantity_in_stock = '72'
UNION
SELECT * FROM sql_store.products 
WHERE  quantity_in_stock = '49'
UNION
SELECT * FROM sql_store.products
WHERE  quantity_in_stock = '38'
-- 5.Return customers born between 1/1/1990 and 1/1/2000
SELECT * FROM sql_store.customers
WHERE birth_date between '1990-01-01' and '2000-01-01'
-- 6. Get the customers whose address contains Trail or Avenue
SELECT * FROM sql_store.customers
where  address regexp 'Trail|Avenue'
-- 7.Get the customers whose phone numbers ends with 9
SELECT * FROM sql_store.customers
where phone regexp '9$'
-- 8. Get the customers whose
-- 9.First names are elka or ambur
SELECT * FROM sql_store.customers 
where first_name regexp 'elka|ambur'
-- 10.Last name ends with EY or ON
SELECT * FROM sql_store.customers 
where last_name regexp 'EY$|ON'
-- 11.Last name starts with MY or contains SE
SELECT * FROM sql_store.customers 
where last_name regexp '^MY|SE'
-- 12.Last name contains b followed by R or U
SELECT * FROM sql_store.customers 
where last_name regexp 'b[r u]'
-- 13. Get the orders that are not shipped
SELECT * FROM sql_store.orders
where status ='1'
-- 14. Start order items by order_id = 2 descending orders as per their total price
SELECT  order_id ,product_id, quantity * unit_price as total_price FROM sql_store.order_items
where order_id ='2' 
order by quantity * unit_price DESC
-- 15. Get the top 3 loyal customers
SELECT count(c.customer_id),c.first_name,c.last_name FROM sql_store. orders o
join customers c 
on o.customer_id=c.customer_id
group by c.customer_id
order by count(c.customer_id) DESC
limit 3
-- 16. Join order_items table with products
SELECT * FROM sql_store.products p
join order_items o 
on p.product_id=o.product_id
-- 17. In sql_invoicing join 3 tables payment, client, payment_methods and show name of the client and payment method
SELECT  c.client_id ,p.payment_method FROM sql_invoicing. payments p
join clients c 
on p.client_id= c.client_id
join payment_methods pm
on pm.payment_method_id = p.payment_method
-- 18.Join product with order_items table and show product_id, product name, and quantity
SELECT p.product_id,p.name,oi.quantity FROM sql_store.order_items oi
join products p 
on oi.product_id=p.product_id 
-- 19. Get all rows with these columns – order_date, order_id, first_name, shipper, status
SELECT o.order_date, o.order_id, c.first_name, o.shipper_id, os.name FROM sql_store.orders o 
join customers c 
on o.customer_id=c.customer_id
join order_statuses os
on o.status =os.order_status_id
-- 20. Write a query from sql_invoicing to get date, client name, amount, payment method
SELECT i.invoice_date, c.name, p.amount, p.payment_method method FROM sql_invoicing.invoices i 
join clients c 
on i.client_id = c.client_id
join payments p 
on p.invoice_id =i.invoice_id
-- 21. Get customer_id, first_name, points, type 0-1000 bronze, 2000-3000 silver and 3000> gold
SELECT customer_id,first_name,points,'Bronze' as type FROM sql_store.customers
where points <= '2000'

UNION
SELECT customer_id,first_name,points,'Silver' as type  FROM sql_store.customers
where points between '2000' and '3000'
UNION
SELECT customer_id,first_name,points,'Gold' as type  FROM sql_store.customers
where points > '3000'

