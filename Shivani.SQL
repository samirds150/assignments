-- 1. Return all the products. Show name, unit price, new price(unit price *1.1) 
-- SELECT name, unit_price*1.1 as 'new price' FROM products

-- 2 Get the order placed in 2019
-- SELECT * FROM orders WHERE order_date = '2019-01-30'

-- 4. Return products with quantity in stocks equal to 49,38,72 
-- SELECT * FROM products WHERE quantity_in_stock regexp '49|38|72'

-- 5. Return customers born between 1/1/1990 and 1/1/2000 
-- SELECT * FROM customers WHERE birth_date between 1/1/1990 and 1/1/2000

-- 6. Get the customers whose address contains Trail or Avenue 
-- SELECT * FROM customers WHERE address regexp 'trail|Avenue'

-- 7 Get the customers whose phone numbers ends with 9 
-- select * from customers where phone like '%9'

-- 8 First names are elka or ambur 
-- select * from customers where first_name  in ('elka','ambur')

-- 10. Last name ends with EY or ON 
-- WHERE last_name regexp 'EY|ON'

-- 11. Last name starts with MY or contains SE
-- WHERE last_name regexp 'MY|SE' 

-- 12. Last name contains b followed by R or U
-- select * from customers where last_name regexp 'b[R|U]'

-- 13. Get the orders that are not shipped 
-- SELECT * FROM orders WHERE not shipper_id =2 

-- 14. Start order times by order_id = 2 descending orders as per their total price 
 -- SELECT * FROM orders where order_id = 2 order by order_id desc

-- 15. Get the top 3 loyal customers 
-- select * from customers order by points limit 3

-- 16 Join order_items table with products 
-- select * from products p
-- join order_items o 
-- on p.product_id= o.product_id


 -- 18. Join product with order_items table and show product_id, product name, and quantity
 -- select p.product_id, p.name, o.quantity from products p 
 -- join order_items o 
 -- on p.product_id = o.product_id


-- 21. Get customer_id, first_name, points, type 0-1000 bronze, 2000-3000 silver and 3000> gold
-- SELECT customer_id, first_name, points, 'Bronze' as Type FROM customers
-- WHERE points < 1000
-- UNION
-- SELECT customer_id, first_name, points, 'silver' as Type FROM customers
-- WHERE points between 2000 and 3000
-- UNION
-- SELECT customer_id, first_name, points, 'gold' as Type FROM customers
-- WHERE points > 3000






 
 
 

