CREATE VIEW supplier_supplies AS 
SELECT 
    s.id AS supplier_id, 
    s.supplier_name, 
    s.begin_date, 
    s.end_date, 
    s.manager_name, 
    s.province, 
    s.city, 
    s.street, 
    p.id AS spare_parts_id, 
    p.spare_part_name, 
    p.price, 
    p.stock
FROM suppliers AS s INNER JOIN spare_parts AS p
ON s.id = p.supplier_id;


CREATE VIEW customer_car_orders AS 
SELECT customers.national_id, customers.first_name, customers.last_name, customers.phone_number, customers.province, customers.city, customers.street, car_orders.vin, car_orders.id as car_order_id
FROM customers INNER JOIN car_orders ON customers.national_id = car_orders.customer_national_id;

CREATE VIEW customer_spare_part_orders AS
SELECT customers.national_id, customers.first_name, customers.last_name, customers.phone_number, customers.province, customers.city, customers.street, spare_part_orders.spare_part_id, spare_part_orders.id as spare_part_order_id
FROM customers INNER JOIN spare_part_orders ON customers.national_id = spare_part_orders.customer_national_id;


CREATE VIEW car_colors AS
SELECT *
FROM cars INNER JOIN colors
ON cars.color_id = colors.id;

