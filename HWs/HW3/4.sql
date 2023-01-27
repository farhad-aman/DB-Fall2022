CREATE TABLE drivers (
  id INT AUTO_INCREMENT,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  phone_number VARCHAR(11) NOT NULL,
  PRIMARY KEY (id));

CREATE TABLE cars (
    id INT AUTO_INCREMENT,
    color VARCHAR(20) NOT NULL,
    model VARCHAR(20) NOT NULL,
    plate_number VARCHAR(20) NOT NULL,
    driver_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (driver_id) REFERENCES drivers(id));

CREATE TABLE passengers (
    id INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(11) NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    PRIMARY KEY(id));

CREATE TABLE rides (
    passenger_id INT NOT NULL,
    driver_id INT NOT NULL,
    car_id INT NOT NULL,
    origin_lat VARCHAR(20) NOT NULL,
    origin_lng VARCHAR(20) NOT NULL,
    destination_lat VARCHAR(20) NOT NULL,
    destination_lng VARCHAR(20) NOT NULL,
    ride_status VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    PRIMARY KEY(passenger_id, driver_id, car_id),
    FOREIGN KEY (passenger_id) REFERENCES passengers(id),
    FOREIGN KEY (driver_id) REFERENCES drivers(id),
    FOREIGN KEY (car_id) REFERENCES cars(id));
