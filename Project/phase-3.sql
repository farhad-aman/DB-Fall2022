-- Insert 10 new customers to the customers table

INSERT INTO customers (national_id, first_name, last_name, phone_number, province, city, street) VALUES ('0000000000', 'Ali', 'Alavi', '9010000000', 'Khorasan', 'Mashhad', 'Sajjad');
INSERT INTO customers (national_id, first_name, last_name, phone_number, province, city, street) VALUES ('1111111111', 'Mohammad', 'Mohammadi', '9020000000', 'Alborz', 'Karaj', 'Fardis');
INSERT INTO customers (national_id, first_name, last_name, phone_number, province, city, street) VALUES ('2222222222', 'Hasan', 'Hasani', '9030000000', 'Fars', 'Shiraz', 'Emamreza');
INSERT INTO customers (national_id, first_name, last_name, phone_number, province, city, street) VALUES ('3333333333', 'Hossein', 'Hosseini', '9040000000', 'Tehran', 'Tehran', 'Valiasr');
INSERT INTO customers (national_id, first_name, last_name, phone_number, province, city, street) VALUES ('4444444444', 'Sajjad', 'Sajjadi', '9050000000', 'Khorasan', 'Neyshabour', 'Farahbakhsh');
INSERT INTO customers (national_id, first_name, last_name, phone_number, province, city, street) VALUES ('5555555555', 'Bagher', 'Bagheri', '9060000000', 'Guilan', 'Rasht', 'Hafez');
INSERT INTO customers (national_id, first_name, last_name, phone_number, province, city, street) VALUES ('6666666666', 'Jafar', 'Jafari', '9070000000', 'Mazandaran', 'Chaloos', 'Ferdowsi');
INSERT INTO customers (national_id, first_name, last_name, phone_number, province, city, street) VALUES ('7777777777', 'Kazem', 'Kazemi', '9080000000', 'Kerman', 'Kerman', 'Shariati');
INSERT INTO customers (national_id, first_name, last_name, phone_number, province, city, street) VALUES ('8888888888', 'Reza', 'Razavi', '9090000000', 'Esfehan', 'Esfehan', 'Beheshti');
INSERT INTO customers (national_id, first_name, last_name, phone_number, province, city, street) VALUES ('9999999999', 'Javad', 'Javadi', '9100000000', 'Khorasan', 'Bojnord', 'Emam Khomeini');


-- Insert 4 new suppliers to the suppliers table

INSERT INTO suppliers(supplier_name, begin_date, end_date, manager_name, province, city, street) VALUES('Ghate Sazan Shargh', '2010-01-01', '2012-01-01', 'Naghi Naghavi', 'Khorasan', 'Mashhad', 'Ahmadabaz');
INSERT INTO suppliers(supplier_name, begin_date, end_date, manager_name, province, city, street) VALUES('Ghate Sazan Shomal', '2012-02-02', '2014-02-02', 'Asgar Asgari', 'Tehran', 'Tehran', 'Jordan');
INSERT INTO suppliers(supplier_name, begin_date, end_date, manager_name, province, city, street) VALUES('Ghate Sazan Gharb', '2014-03-03', '2016-03-03', 'Mahdi Mahdavi', 'Esfehan', 'Esfehan', 'Abbasi');
INSERT INTO suppliers(supplier_name, begin_date, end_date, manager_name, province, city, street) VALUES('Ghate Sazam Jonoob', '2016-04-04', '2018-04-04', 'Fatemeh Fatemi', 'Fars', 'Shiraz', 'Hafez');


-- Insert 4 new spare parts to the spare_parts table

INSERT INTO spare_parts(spare_part_name, price, stock, supplier_id) VALUES ('Ghate1', 100.1, 1, 1);
INSERT INTO spare_parts(spare_part_name, price, stock, supplier_id) VALUES ('Ghate2', 200.2, 2, 1);
INSERT INTO spare_parts(spare_part_name, price, stock, supplier_id) VALUES ('Ghate3', 300.3, 3, 2);
INSERT INTO spare_parts(spare_part_name, price, stock, supplier_id) VALUES ('Ghate4', 400.4, 4, 2);
INSERT INTO spare_parts(spare_part_name, price, stock, supplier_id) VALUES ('Ghate5', 500.5, 5, 3);
INSERT INTO spare_parts(spare_part_name, price, stock, supplier_id) VALUES ('Ghate6', 600.6, 6, 3);
INSERT INTO spare_parts(spare_part_name, price, stock, supplier_id) VALUES ('Ghate7', 700.7, 7, 4);
INSERT INTO spare_parts(spare_part_name, price, stock, supplier_id) VALUES ('Ghate8', 800.8, 8, 4);


-- Insert 2 new colors to the colors table

INSERT INTO colors(color_name) VALUES ('Black');
INSERT INTO colors(color_name) VALUES ('White');
INSERT INTO colors(color_name) VALUES ('Red');


-- Insert 12 new cars to the cars table
INSERT INTO cars(vin, brand, model, gearbox, color_id) VALUES('11111111', 'Tara', 'Plus', 'Automatic', 1);
INSERT INTO cars(vin, brand, model, gearbox, color_id) VALUES('22222222', 'Tara', 'Plus', 'Manual', 2);
INSERT INTO cars(vin, brand, model, gearbox, color_id) VALUES('33333333', 'Tara', 'Plus', 'Automatic', 3);
INSERT INTO cars(vin, brand, model, gearbox, color_id) VALUES('44444444', 'Tara', 'Minus', 'Manual', 1);
INSERT INTO cars(vin, brand, model, gearbox, color_id) VALUES('55555555', 'Tara', 'Minus', 'Automatic', 2);
INSERT INTO cars(vin, brand, model, gearbox, color_id) VALUES('66666666', 'Tara', 'Minus', 'Manual', 3);

INSERT INTO cars(vin, brand, model, gearbox, color_id) VALUES('88888888', 'Dara', 'Khoob', 'Automatic', 3);
INSERT INTO cars(vin, brand, model, gearbox, color_id) VALUES('99999999', 'Dara', 'Khoob', 'Manual', 2);
INSERT INTO cars(vin, brand, model, gearbox, color_id) VALUES('10101010', 'Dara', 'Khoob', 'Automatic', 1);
INSERT INTO cars(vin, brand, model, gearbox, color_id) VALUES('00000000', 'Dara', 'Bad', 'Manual', 3);
INSERT INTO cars(vin, brand, model, gearbox, color_id) VALUES('12121212', 'Dara', 'Bad', 'Automatic', 2);
INSERT INTO cars(vin, brand, model, gearbox, color_id) VALUES('13131313', 'Dara', 'Bad', 'Manual', 1);


-- Insert 2 new car orders to the car_orders table

INSERT INTO car_orders(vin, customer_national_id) VALUES ('11111111', '0000000000');
INSERT INTO car_orders(vin, customer_national_id) VALUES ('00000000', '1111111111');


-- Insert 1 new spare part order to the spare_part_orders table

INSERT INTO spare_part_orders(spare_part_id, customer_national_id) VALUES (1, '2222222222');
