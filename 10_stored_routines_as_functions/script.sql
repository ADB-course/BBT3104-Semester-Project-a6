-- Write your SQL code here
--Function for the total procument cost of a product
DELIMITER $$

CREATE FUNCTION calculate_total_procurement_cost(product_id BIGINT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total_cost DECIMAL(10, 2);
    
    SELECT SUM(product_cost)
    INTO total_cost
    FROM procurement
    WHERE productID = product_id;
    
    RETURN COALESCE(total_cost, 0);
END $$

DELIMITER ;
--Function for the average communication frequency with a supplier
