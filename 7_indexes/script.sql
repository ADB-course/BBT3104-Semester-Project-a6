-- B+ Tree index on Procurement department employee code
CREATE INDEX idx_procurement_employee_code
ON Procurement (ProcurementDepartmentEmployeeCode);

-- B+ Tree index on Employee ID
CREATE INDEX idx_procurement_employee_id
ON Procurement (EmployeeID);

-- B+ Tree index on Supplier ID
CREATE INDEX idx_procurement_supplier_id
ON Procurement (SupplierID);

-- B+ Tree index on Product ID
CREATE INDEX idx_procurement_product_id
ON Procurement (ProductID);


-- B+ Tree index on Supplier ID (primary key)
CREATE UNIQUE INDEX idx_supplier_id
ON Supplier (SupplierID);

-- B+ Tree index on Supplier Number
CREATE INDEX idx_supplier_number
ON Supplier (SupplierNumber);

-- B+ Tree index on Product ID
CREATE INDEX idx_supplier_product_id
ON Supplier (ProductID);

-- B+ Tree index on Employee ID (primary key)
CREATE UNIQUE INDEX idx_employee_id 
ON Employee (EmployeeID);

-- B+ Tree index on Department
CREATE INDEX idx_employee_department
ON Employee (Department);

-- B+ Tree index on Employee phone number
CREATE UNIQUE INDEX idx_employee_phone_number
ON Employee (EmployeePhoneNumber);