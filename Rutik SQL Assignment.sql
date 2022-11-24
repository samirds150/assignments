-- 1.Return all the products. Show name, unit price, new price(unit price *1.1) 
-- select * from products
-- select name ,unit_price, unit_price * 1.1 as new_price from products

 -- 2.Get the order placed in 2019
 -- select * from orders
 -- where order_date = '2019-01-30'
 
-- 3.From order_items tables, get the items for the order number6 where the total price >30 
 -- select * from order_items
 -- where order_id=6
 -- aaaaaaaa
 
 -- 4.Return products with quantity in stocks equal to 49,38,72 
 -- select * from products
-- where quantity_in_stock IN (49, 38 ,72 )

-- 5.Return customers born between 1/1/1990 and 1/1/2000 
-- select * from customers
-- where birth_date between '1990-01-01' and '2000-01-01'

-- 6.Get the customers whose address contains Trail or Avenue 
-- select * from customers
-- where address regexp ' Trail|Avenue'

-- 7.Get the customers whose phone numbers ends with 9 
-- select * from customers
-- where phone regexp '9$'

-- 8.Get the customers whose 
-- 9.First names are elka or ambur 
-- select * from customers
-- where first_name regexp 'elka|ambur'

-- 10.Last name ends with EY or ON 
-- select * from customers
-- where last_name regexp 'EY$|ON$'

-- 11.Last name starts with MY or contains SE 
-- select * from customers
-- where last_name regexp '^MY|SE' 

-- 12.Last name contains b followed by R or U 
 -- select * from customers
-- where last_name regexp 'b[RU]'

-- 13.Get the orders that are not shipped 
 -- select o.order_id,c.first_name,o.order_date,o.status,os.name As status_type from orders o join customers c
 -- on o.customer_id=c.customer_id
-- join order_statuses os
-- on o.status=os.order_status_id
-- where not os.name='shipped'

-- 14.Start order times by order_id = 2 descending orders as per their total price 
-- select * from orders
-- where order_id=2 
-- order by order_id desc

-- 15.Get the top 3 loyal customers 
-- select * from customers
-- limit 3

-- 16.Join order_items table with products 
-- select * from order_items oi
-- join products p 
-- on oi.product_id=p.product_id

-- 17.In sql_invoicing join 3 tables payment, client, payment_methods and show name of the client and payment method 
-- select c.name,p.payment_method from payments p
-- join clients c
-- join payment_methods pm

-- 18.Join product with order_items table and show product_id, product name, and quantity 
-- select p.product_id,p.name,oi.quantity from products p
-- join order_items oi
-- on p.product_id=oi.product_id

-- 19.Get all rows with these columns – order_date, order_id, first_name, shipper,  status
--   


-- 20.Write a query from sql_invoicing to get date, client name, amount, payment method 
-- select p.date,c.name,p.amount,p.payment_method from payments p
-- join clients c
-- on p.client_id=c.client_id

-- 21.Get customer_id, first_name, points, type 0-1000 bronze, 2000-3000 silver and 3000> gold 
-- select customer_id,first_name,points,'Bronze'as type from customers 
-- where points between 0 and 1000
-- UNION
-- select customer_id,first_name,points,'Silver'as type from customers 
-- where points between 2000 and 3000
-- UNION
-- select customer_id,first_name,points,'Gold'as type from customers 
-- where points >3000

