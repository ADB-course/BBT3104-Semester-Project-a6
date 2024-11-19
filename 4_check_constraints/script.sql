-- Write your SQL code here
--Product availability
ALTER TABLE products 
ADD CONSTRAINT chk_product_group 
CHECK (product_group IN ('Electronics', 'Furniture', 'Groceries'));
--Supplier ID Posititve
ALTER TABLE suppliers 
ADD CONSTRAINT chk_supplier_id_positive 
CHECK (supplierID > 0);

