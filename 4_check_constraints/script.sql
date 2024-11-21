-- Write your SQL code here
--Product availability
ALTER TABLE product_info
ADD CONSTRAINT chk_product_available
CHECK (product_available IN ('Yes', 'No'));

--Supplier ID Posititve
ALTER TABLE suppliers
ADD CONSTRAINT chk_supplier_id_positive 
CHECK (LENGTH(supplierID) > 0);


