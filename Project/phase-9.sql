CREATE USER 'john_doe'@'localhost' IDENTIFIED by 'johndoe2000johndoe';


REVOKE ALL, GRANT OPTION FROM 'john_doe'@'localhost';


GRANT SELECT ON * TO 'john_doe'@'localhost';


SHOW GRANTS FOR 'john_doe'@'localhost';
