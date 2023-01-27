ALTER TABLE cars ADD COLUMN is_sold boolean DEFAULT false;


UPDATE cars
SET is_sold = true
WHERE EXISTS(SELECT * FROM car_orders WHERE car_orders.vin = cars.vin);


START TRANSACTION;
INSERT INTO car_orders (vin, customer_national_id) VALUES ('13131313', '2222222222');
UPDATE cars SET is_sold = true where vin = '13131313';
COMMIT;


START TRANSACTION;
INSERT INTO spare_part_orders (spare_part_id, customer_national_id) VALUES (8, '1111111111');
UPDATE spare_parts SET stock = stock - 1 WHERE spare_parts.id = 8;
COMMIT;