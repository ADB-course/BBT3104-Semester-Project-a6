-- Write your SQL code here
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