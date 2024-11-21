-- Write your SQL code here
--Fatuma
--B+ Tree indexes

-- 1. Employee Table
CREATE INDEX idx_employee_id
 ON Employee (Employee_ID);
CREATE INDEX idx_employee_name 
 ON Employee (Employee_Name);

-- 2. Supplier Table
CREATE INDEX idx_supplier_id
 ON Supplier (Supplier_ID);
CREATE INDEX idx_supplier_name 
 ON Supplier (Supplier_Name);

-- 3. Product Table
CREATE INDEX idx_product_id 
 ON Product (Product_ID);
CREATE INDEX idx_product_supplier_id
 ON Product (Supplier_ID);
CREATE INDEX idx_product_name
 ON Product (Product_Name);
CREATE INDEX idx_product_available
 ON Product (Product_Available);

-- 4. Employee_Department Table
CREATE INDEX idx_procurement_dept_employee_code
 ON Employee_Department (Procurement_Department_Employee_Code);
CREATE INDEX idx_employee_department_id
 ON Employee_Department (Employee_ID);

-- 5. Procurement Table
CREATE INDEX idx_procurement_composite
 ON Procurement (Employee_ID, Supplier_ID, Product_ID);
CREATE INDEX idx_procurement_product_id
 ON Procurement (Product_ID);

-- 6. Supplier_Info Table
CREATE INDEX idx_supplier_info_id
 ON Supplier_Info (Supplier_ID);
CREATE INDEX idx_supplier_phone_number
 ON Supplier_Info (Supplier_Phone_Number);

-- 7. Product_Supplied Table
CREATE INDEX idx_product_supplied_composite
 ON Product_Supplied (Product_ID, Supplier_ID);

-- 8. Employee Phone Number Table
CREATE INDEX idx_employee_phone_id
 ON Employee_Phone_Number (Employee_ID);
CREATE INDEX idx_employee_phone_number
 ON Employee_Phone_Number (Employee_Phone_Number);

-- 9. Communication Log Table
CREATE INDEX idx_comm_log_code
 ON Communication_Log (Communication_Log_Code);
CREATE INDEX idx_comm_log_composite
 ON Communication_Log (Date_of_Communication, Employee_ID, Supplier_ID);
CREATE FULLTEXT INDEX idx_comm_log_details
 ON Communication_Log (Details);

-- 10. Product_Supplier Junction Table
CREATE INDEX idx_product_supplier_composite
 ON Product_Supplier (Product_ID, Supplier_ID);
