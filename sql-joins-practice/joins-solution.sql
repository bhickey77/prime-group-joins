--1
SELECT * FROM customers
JOIN addresses ON customers.id = addresses.customer_id;

--2
SELECT * FROM orders
JOIN line_items ON orders.id = line_items.order_id; 

--3
SELECT warehouse FROM warehouse_product
JOIN products ON warehouse_product.product_id = products.id
JOIN warehouse ON warehouse_product.warehouse_id = warehouse.id
WHERE products.description = 'cheetos';

--4
SELECT warehouse FROM warehouse_product
JOIN products ON warehouse_product.product_id = products.id
JOIN warehouse ON warehouse_product.warehouse_id = warehouse.id
WHERE products.description = 'diet pepsi';

--5
SELECT customers, COUNT(*) FROM orders
JOIN addresses ON orders.address_id = addresses.id
JOIN customers ON addresses.customer_id = customers.id
GROUP BY customers;

--6
SELECT COUNT(*) FROM customers;

--7
SELECT COUNT(*) FROM products;

--8
SELECT SUM(on_hand) FROM warehouse_product
JOIN products ON warehouse_product.product_id = products.id
WHERE products.description = 'diet pepsi';