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
