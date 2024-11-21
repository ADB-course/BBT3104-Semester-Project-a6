-- Write your SQL code here
--Monthly Procurement Report for Products
DELIMITER $$

CREATE PROCEDURE generate_monthly_procurement_report(IN report_month INT, IN report_year INT)
BEGIN
    SELECT 
        p.product_name AS Product,
        SUM(pr.order_amount) AS Total_Quantity,
        SUM(pr.order_amount * 100) AS Total_Cost -- Example: Assuming a fixed cost of 100 per unit
    FROM 
        procurement AS pr
    JOIN 
        products AS p ON pr.productID = p.productID
    WHERE 
        MONTH(pr.date_of_communication) = report_month
        AND YEAR(pr.date_of_communication) = report_year
    GROUP BY 
        p.product_name;
END $$

DELIMITER ;


--Supplier Communication Log Summary
DELIMITER $$

CREATE PROCEDURE retrieve_supplier_communication_log(
    IN supplier_id VARCHAR(10),
    IN start_date DATE,
    IN end_date DATE
)
BEGIN
    SELECT 
        cl.date_of_communication AS Communication_Date,
        cl.details AS Communication_Details,
        e.employee_name AS Employee_Involved,
        cl.communication_log_code AS Log_Code
    FROM 
        communication_log AS cl
    JOIN 
        employee AS e ON cl.employeeID = e.employeeID
    WHERE 
        cl.supplierID = supplier_id
        AND cl.date_of_communication BETWEEN start_date AND end_date
    ORDER BY 
        cl.date_of_communication ASC;
END $$

DELIMITER ;

