CREATE TRIGGER spare_part_stock_not_zero BEFORE UPDATE ON spare_parts
    FOR EACH ROW
    BEGIN
        IF (new.stock <= 0) THEN SET new.stock = old.stock;
        ELSE SET new.stock = new.stock;
        END IF;
    END;