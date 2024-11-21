-- Write your SQL code here
-- View for employee communication overview
CREATE VIEW EmployeeCommunicationOverview AS
SELECT
    employee.employeeID,
    employee.employee_name,
    communication_log.communication_log_code,
    communication_log.date_of_communication AS communication_date,
    communication_log.details,
    supplier.supplier_name
FROM
    employee  
JOIN
    communication logs ON employee.employeeID = communication logs.employeeID
LEFT JOIN
    suppliers ON communication logs.supplierID = suppliers.supplierID  
ORDER BY
    employee.employeeID, communication log.date_of_communication;

-- View for supplier details
CREATE VIEW Supplier_View AS
SELECT 
    supplier.supplierID, 
    supplier.supplier_name,  
    product_info.productID, 
    product_info.product_name, 
    product_info.product_group, 
    product_info.product_available, 
    communication_log.date_of_communication AS communication_date, 
    communication_log.details, 
    employee.employee_name, 
FROM 
    supplier 
JOIN 
    product_info ON supplier.supplierID = product_info.supplierID
LEFT JOIN 
    communication_log ON supplier.supplierID = communication_log.supplierID
LEFT JOIN 
    employee ON communication_log.employeeID = employee.employeeID;    