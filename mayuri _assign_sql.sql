-- 1. Return all the products. Show name, unit price, new price(unit price *1.1) 
-- SELECT name, unit_price*1.1 as 'new price' FROM products

-- 2. Get the order placed in 2019
-- SELECT * FROM orders WHERE order_date = '2019-01-30'

-- 3. From order_items tables, get the items for the order number6 where the total price >30 ****** 
-- SELECT * FROM order_items where order_id = 6

-- 4. Return products with quantity in stocks equal to 49,38,72 
-- SELECT * FROM products WHERE quantity_in_stock regexp '49|38|72'

-- 5. Return customers born between 1/1/1990 and 1/1/2000 
-- SELECT * FROM customers WHERE birth_date between 1/1/1990 and 1/1/2000

-- 6. Get the customers whose address contains Trail or Avenue 
-- SELECT * FROM customers WHERE address regexp 'trail|Avenue'

-- 7. Get the customers whose phone numbers ends with 9 
-- SELECT * FROM customers WHERE phone like '%9'

-- 8. Get the customers whose
-- SELECT * FROM customers

-- 9. First names are elka or ambur
-- WHERE first_name regexp 'elka|ambur'

-- 10. Last name ends with EY or ON 
-- WHERE last_name regexp 'EY|ON'

-- 11. Last name starts with MY or contains SE
-- WHERE last_name regexp 'MY|SE'   

-- 12. Last name contains b followed by R or U
-- WHERE last_name regexp 'b[R|U]'

-- 13. Get the orders that are not shipped 
-- SELECT * FROM orders WHERE not shipper_id =2

-- 14. Start order times by order_id = 2 descending orders as per their total price *****
-- SELECT * FROM orders where order_id = 2 order by order_id desc

-- 15. Get the top 3 loyal customers 
-- SELECT * FROM customers order by points limit 3

-- 16. Join order_items table with products 
-- SELECT * FROM order_items o 
-- JOIN products p
-- ON o.product_id = p.product_id

-- 17. In sql_invoicing join 3 tables payment, client, payment_methods and show name of the client and payment method 
-- SELECT c.name, p.payment_method FROM payments p 
-- JOIN clients c
-- JOIN payment_methods pm

-- 18. Join product with order_items table and show product_id, product name, and quantity 
-- SELECT p.product_id, p.name, o.quantity FROM products p
-- JOIN order_items o

-- 19. Get all rows with these columns – order_date, order_id, first_name, shipper, status ****
-- SELECT order_id, first_name, order_date, status FROM customers 
-- JOIN orders
 
-- 20. Write a query from sql_invoicing to get date, client name, amount, payment method 
-- SELECT date, name, amount, payment_method FROM payments p
-- JOIN clients c 


-- 21. Get customer_id, first_name, points, type 0-1000 bronze, 2000-3000 silver and 3000> gold
-- SELECT customer_id, first_name, points, 'Bronze' as Type FROM customers
-- WHERE points < 1000
-- UNION
-- SELECT customer_id, first_name, points, 'silver' as Type FROM customers
-- WHERE points between 2000 and 3000
-- UNION
-- SELECT customer_id, first_name, points, 'gold' as Type FROM customers
-- WHERE points > 3000

