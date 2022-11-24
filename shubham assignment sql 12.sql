-- 1 Return all the products. Show name, unit price, new price(unit price *1.1)




-- 2 Get the order placed in 2019 (confuse)
-- SELECT * FROM orders where order_date = '2019-01-30'
 
 -- 3  From order_items tables, get the items for the order number6 where the total price >30 (CONFUSE)
-- SELECT *FROM order_items WHERE order_id = 6 AND total_price > 30

-- 4 Return products with quantity in stocks equal to 49,38,72 (confuse)
-- select * from  products where  quantity_in_stock = '49,38,72'

--  5 Return customers born between 1/1/1990 and 1/1/2000
-- SELECT * FROM customers where birth_date between '1990-01-01' and '2020-01-01'

-- 6 Get the customers whose address contains Trail or Avenue
-- SELECT * FROM customers where address 

-- 7 Get the customers whose phone numbers ends with 9
-- SELECT * FROM customers where phone LIKE '%9'

-- 8 Get the customers whose
-- 9  First names are elka or ambur
-- SELECT * FROM customers where first_name = 'Elka' or 'ambur';

-- 10 Last name ends with EY or ON (confuse)
-- SELECT * FROM customers where last_name like '%EY'

-- 11 Last name starts with MY or contains SE (confuse)
-- SELECT * FROM customers where last_name like 'my%'

-- 12 Last name contains b followed by R or U (CONFUSE)
-- SELECT * FROM customers where last_name like 'b%'

-- 13  Get the orders that are not shipped
-- SELECT * FROM order_statuses where not name = 'shipped'

-- 14  Start order times by order_id = 2 descending orders as per their total price
-- SELECT * FROM order_items order by order_id = '2'desc

-- 15 Get the top 3 loyal customers
-- SELECT * FROM Customers limit 3

-- 16  Join order_items table with products
-- SELECT * FROM order_items o
-- JOIN products p
-- on o.product_id = p.product_id

-- 17 In sql_invoicing join 3 tables payment, client, payment_methods and show name of the client and payment method (confuse)
-- SELECT * FROM payments p
-- join client c on p.client_id = c.client_id
-- join payment_methods on c.payment_methods_id = c.name


-- 18  Join product with order_items table and show product_id, product name, and quantity
-- SELECT p.product_id, name, quantity from order_items o
-- JOIN products p 
-- on o.product_id = p.product_id

-- 19  Get all rows with these columns – order_date, order_id, first_name, shipper, status (confuse)
-- SELECT * FROM orders o
-- JOIN products p 
-- on o.order_id = p.order_id


-- 20  Write a query from sql_invoicing to get date, client name, amount, payment method (confuse)
-- select date, client name, amount, payment_methods from sql_inventory

-- 21  Get customer_id, first_name, points, type 0-1000 bronze, 2000-3000 silver and 3000> gold































