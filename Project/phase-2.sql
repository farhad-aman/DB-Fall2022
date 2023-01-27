CREATE TABLE colors(
	id INT PRIMARY KEY AUTO_INCREMENT,
    color_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE cars(
	vin CHAR(8) PRIMARY KEY,
    brand VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    gearbox VARCHAR(50) CHECK(gearbox IN ('manual', 'automatic')),
    color_id INT NOT NULL,
    FOREIGN KEY(color_id) REFERENCES colors(id)
);

CREATE TABLE suppliers(
	id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(50) NOT NULL UNIQUE,
    begin_date DATE NOT NULL,
    end_date DATE NOT NULL,
    manager_name VARCHAR(50) NOT NULL,
    province VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    street VARCHAR(50) NOT NULL
);

CREATE TABLE spare_parts(
	id INT PRIMARY KEY AUTO_INCREMENT,
    spare_part_name VARCHAR(50) NOT NULL UNIQUE,
    price NUMERIC(10, 2) NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    supplier_id INT NOT NULL,
    FOREIGN KEY(supplier_id) REFERENCES suppliers(id)
);

CREATE TABLE spare_parts_models(
	id INT PRIMARY KEY AUTO_INCREMENT,
    model_name VARCHAR(50) NOT NULL,
	spare_part_id INT NOT NULL,
	FOREIGN KEY(spare_part_id) REFERENCES spare_parts(id),
    UNIQUE(model_name, spare_part_id)
);

CREATE TABLE customers(
	national_id CHAR(10) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number CHAR(10) NOT NULL UNIQUE,
    province VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    street VARCHAR(50) NOT NULL
);

CREATE TABLE car_orders(
	id INT PRIMARY KEY AUTO_INCREMENT,
    vin CHAR(8) NOT NULL UNIQUE,
    customer_national_id CHAR(10) NOT NULL,
	FOREIGN KEY(vin) REFERENCES cars(vin),
    FOREIGN KEY(customer_national_id) REFERENCES customers(national_id)
);

CREATE TABLE spare_part_orders(
	id INT PRIMARY KEY AUTO_INCREMENT,
    spare_part_id INT NOT NULL,
    customer_national_id CHAR(10) NOT NULL,
	FOREIGN KEY(spare_part_id) REFERENCES spare_parts(id),
    FOREIGN KEY(customer_national_id) REFERENCES customers(national_id)
);


