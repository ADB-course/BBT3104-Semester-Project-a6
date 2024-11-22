-- Write your SQL code here
-- View for employee communication overview
CREATE VIEW EmployeeCommunicationOverview AS
SELECT
    employee.employeeID,
    employee.employee_name,
    communication_log.communication_log_code,
    communication_log.date_of_communication AS communication_date,
    communication_log.details,
    suppliers.supplier_name
FROM
    employee  
JOIN
    communication_log ON employee.employeeID = communication_log.employeeID
LEFT JOIN
    suppliers ON communication_log.supplierID = suppliers.supplierID  
ORDER BY
    employee.employeeID, communication_log.date_of_communication;

-- View for supplier details
REATE VIEW Supplier_View AS
SELECT 
    suppliers.supplierID, 
    suppliers.supplier_name,  
    product_info.productID, 
    product_info.product_name, 
    product_info.product_group, 
    product_info.product_available, 
    communication_log.date_of_communication AS communication_date, 
    communication_log.details, 
    employee.employee_name
FROM 
    suppliers
JOIN 
    product_info ON suppliers.supplierID = product_info.supplierID
LEFT JOIN 
    communication_log ON suppliers.supplierID = communication_log.supplierID
LEFT JOIN 
    employee ON communication_log.employeeID = employee.employeeID;
