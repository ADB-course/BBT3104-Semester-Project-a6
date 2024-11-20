--1.PROCUREMENT ENTITY
-- B+ Tree index on Procurement department employee code
CREATE UNIQUE INDEX idx_procurement_employee_code
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


--2.SUPPLIER ENTITY
-- B+ Tree index on Supplier ID (primary key)
CREATE UNIQUE INDEX idx_supplier_id
ON Supplier (SupplierID);

-- B+ Tree index on Supplier Number
CREATE INDEX idx_supplier_number
ON Supplier (SupplierNumber);

-- B+ Tree index on Product ID
CREATE INDEX idx_supplier_product_id
ON Supplier (ProductID);


----3.EMPLOYEE ENTITY
-- B+ Tree index on Employee ID (primary key)
CREATE UNIQUE INDEX idx_employee_id 
ON Employee (EmployeeID);

-- B+ Tree index on Department
CREATE INDEX idx_employee_department
ON Employee (Department);

-- B+ Tree index on Employee phone number
CREATE INDEX idx_employee_phone_number
ON Employee (EmployeePhoneNumber);


----4.Communication Log ENTITY
-- B+ Tree index on Communication log code
CREATE UNIQUE INDEX idx_communication_log_code 
ON CommunicationLog (CommunicationLogCode);

-- B+ Tree index on Date of communication
CREATE INDEX idx_communication_log_date 
ON CommunicationLog (DateOfCommunication);

-- B+ Tree index on Employee ID 
CREATE INDEX idx_communication_employee_id 
ON CommunicationLog (EmployeeID);

-- B+ Tree index on Supplier ID 
CREATE INDEX idx_communication_supplier_id 
ON CommunicationLog (SupplierID);

-- Full-text index on Details
CREATE FULLTEXT INDEX ON CommunicationLog (Details)
KEY INDEX idx_communication_log_code;


---5.Supplier Liaison Entity
-- B+ Tree index on Supplier liaison code
CREATE UNIQUE INDEX idx_supplier_liaison_code 
ON SupplierLiaison (SupplierLiaisonCode);

-- B+ Tree index on Employee ID 
CREATE INDEX idx_liaison_employee_id 
ON SupplierLiaison (EmployeeID);

-- B+ Tree index on Supplier ID 
CREATE INDEX idx_liaison_supplier_id 
ON SupplierLiaison (SupplierID);

-- B+ Tree index on Communication log code
CREATE INDEX idx_liaison_communication_log_code 
ON SupplierLiaison (CommunicationLogCode);

-- B+ Tree index on Date of communication
CREATE INDEX idx_liaison_date 
ON SupplierLiaison (DateOfCommunication);


--6.Product Entity
-- B+ Tree index on Product ID 
CREATE UNIQUE INDEX idx_product_id 
ON Product (ProductID);

-- B+ Tree index on Product group
CREATE INDEX idx_product_group 
ON Product (ProductGroup);

-- B+ Tree index on Supplier ID 
CREATE INDEX idx_product_supplier_id 
ON Product (SupplierID);