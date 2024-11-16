-- Write your SQL code here
--Monthly Procurement Report for Products
DELIMITER $$

CREATE PROCEDURE generate_monthly_procurement_report(IN report_month INT, IN report_year INT)
BEGIN
    SELECT 
        p.product_name AS Product,
        COUNT(pd.productID) AS Total_Quantity,
        SUM(pd.product_cost) AS Total_Cost
    FROM 
        procurement AS pd
    JOIN 
        products AS p ON pd.productID = p.productID
    WHERE 
        MONTH(pd.procurement_date) = report_month 
        AND YEAR(pd.procurement_date) = report_year
    GROUP BY 
        p.product_name;
END $$

DELIMITER ;
--Supplier Communication Log Summary
DELIMITER $$

CREATE PROCEDURE retrieve_supplier_communication_log(
    IN supplier_id BIGINT,
    IN start_date DATE,
    IN end_date DATE
)
BEGIN
    SELECT 
        cl.date_of_communication AS Communication_Date,
        cl.details AS Communication_Details,
        cl.employee_name AS Employee_Involved,
        cl.communication_log_code AS Log_Code
    FROM 
        communication_logs AS cl
    WHERE 
        cl.supplierID = supplier_id
        AND cl.date_of_communication BETWEEN start_date AND end_date
    ORDER BY 
        cl.date_of_communication ASC;
END $$

DELIMITER ;

