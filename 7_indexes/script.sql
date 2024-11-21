-- Write your SQL code here
--Fatuma
--B+ Tree indexes
-- 1. Employee Table
CREATE INDEX idx_employee_id
 ON employee (employeeID);
CREATE INDEX idx_employee_name 
 ON employee (employee_name);

-- 2. Supplier Table
CREATE INDEX idx_supplier_id
 ON suppliers (supplierID);
CREATE INDEX idx_supplier_name 
 ON suppliers (supplier_name);

-- 3. Product Table
CREATE INDEX idx_product_id 
 ON products (productID);
CREATE INDEX idx_product_supplier_id
 ON product_info (supplierID);
CREATE INDEX idx_product_name
 ON product_info (product_name);
CREATE INDEX idx_product_available
 ON product_info (product_available);


-- 4. Employee_Department Table
CREATE INDEX idx_procurement_dept_employee_code
 ON employee_department (procurement_department_employee_code);
CREATE INDEX idx_employee_department_id
 ON employee_department (employeeID);

-- 5. Procurement Table
CREATE INDEX idx_procurement_composite
 ON procurement (employeeID, supplierID, productID);
CREATE INDEX idx_procurement_product_id
 ON Procurement (productID);

-- 6. Supplier_Info Table
CREATE INDEX idx_supplier_info_id
 ON supplier_info (supplierID);
CREATE INDEX idx_supplier_phone_number
 ON supplier_info (supplier_phone_number);

-- 7. Product_Supplied Table
CREATE INDEX idx_product_supplied_composite
 ON product_supplied (productID, supplierID);

-- 8. Employee Phone Number Table
CREATE INDEX idx_employee_phone_id
 ON employee_phone_number (employeeID);
CREATE INDEX idx_employee_phone_number
 ON employee_phone_number (employee_phone_number);

-- 9. Communication Log Table
CREATE INDEX idx_comm_log_code
 ON communication_log (communication_log_code);
CREATE INDEX idx_comm_log_composite
 ON communication_log (date_of_communication, employeeID, supplierID);
CREATE FULLTEXT INDEX idx_comm_log_details
 ON communication_log (details);

-- 10. Product_Supplier Junction Table
CREATE INDEX idx_product_supplier_composite
 ON product_supplied (productID, supplierID);
