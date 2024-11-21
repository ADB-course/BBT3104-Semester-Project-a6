-- Write your SQL code here
--Function for the total procument cost of a product
DELIMITER $$

CREATE FUNCTION calculate_total_procurement_cost(product_id VARCHAR(10))
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total_cost DECIMAL(10, 2);

    -- Assuming a fixed unit cost of 100
    SELECT SUM(order_amount * 100) -- Replace 100 with the actual cost per unit if available
    INTO total_cost
    FROM procurement
    WHERE productID = product_id;

    RETURN COALESCE(total_cost, 0);
END $$

DELIMITER ;


DELIMITER ;
--Function for the average communication frequency with a supplier
DELIMITER $$

CREATE FUNCTION calculate_avg_communication_frequency(
    supplier_id BIGINT,
    start_date DATE,
    end_date DATE
)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total_communications INT;
    DECLARE date_difference INT;
    DECLARE avg_frequency DECIMAL(10, 2);
    
    -- Count total communications within the date range
    SELECT COUNT(*)
    INTO total_communications
    FROM communication_logs
    WHERE supplierID = supplier_id
      AND date_of_communication BETWEEN start_date AND end_date;
    
    -- Calculate the number of days in the date range
    SELECT DATEDIFF(end_date, start_date) + 1
    INTO date_difference;
    
    -- Calculate the average frequency
    SET avg_frequency = total_communications / date_difference;
    
    RETURN COALESCE(avg_frequency, 0);
END $$

DELIMITER ;

