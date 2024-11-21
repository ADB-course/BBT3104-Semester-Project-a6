-- Write your SQL code here
-- View for employee communication overview
CREATE VIEW EmployeeCommunicationOverview AS
SELECT
    employee.employeeID,
    employee.employee_name,
    communication_log.communication_log_code,
    communication_log.date_of_communication AS communication_date,
    commun ication_log.details,
    supplier.supplier_name
FROM
    employee  
JOIN
    communication logs ON employee.employee_id = communication logs.employee_id
LEFT JOIN
    suppliers ON communication logs.supplier_id = suppliers.supplier_id  
ORDER BY
    employee.employee_id, communication logs.date;

-- View for supplier details
CREATE VIEW Supplier_View AS
SELECT 
    supplier.supplierID, 
    supplier.supplier_name, 
    supplier.supplier_number, 
    product.productID, 
    product.product_name, 
    product.product_group, 
    product.product_available, 
    communication_log.date_of_communication AS communication_date, 
    communication_log.details, 
    employee.employee_name, 
    employee.employee_phone_number
FROM 
    supplier     