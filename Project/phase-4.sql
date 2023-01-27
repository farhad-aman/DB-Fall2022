INSERT INTO customers 
VALUES(
    '0123456789',
    'Sherlock', 
    'Holmes', 
    '4479626846', 
    'London', 
    'London', 
    '212 Baker Street'
);

INSERT INTO car_orders(vin, customer_national_id) 
VALUES ('22222222', '0123456789');

UPDATE customers
SET phone_number = '4473427800'
WHERE national_id = '0123456789';

DELETE FROM customers 
WHERE NOT EXISTS(
	SELECT * 
    FROM car_orders, spare_part_orders
    WHERE customers.national_id = car_orders.customer_national_id 
    OR customers.national_id = spare_part_orders.customer_national_id
);
