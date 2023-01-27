CREATE TABLE brand_logs(
    id INT PRIMARY KEY,
    brand_id INT NOT NULL,
    old_name VARCHAR(50),
    new_name VARCHAR(50),
    changed_at DATE
);