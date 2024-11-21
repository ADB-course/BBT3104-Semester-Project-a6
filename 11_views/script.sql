-- Write your SQL code here
-- View for employee communication overview
CREATE VIEW EmployeeCommunicationOverview AS
SELECT
    employee.employee_id,
    employee.employee_name,
    communication_log.communication_code,
    communication_log.date AS communication_date,
    commun ication_log.message_details,
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