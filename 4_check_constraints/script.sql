-- Write your SQL code here
--Product Availability Check Constraint
ALTER TABLE products 
ADD CONSTRAINT chk_product_availability 
CHECK (product_available IN ('Yes', 'No'));
--Supplier ID Positive Value Constraint
ALTER TABLE suppliers 
ADD CONSTRAINT chk_supplier_id_positive 
CHECK (supplierID > 0);

