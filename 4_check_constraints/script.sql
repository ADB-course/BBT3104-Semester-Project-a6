-- Write your SQL code here
--Product Availability Check Constraint
ALTER TABLE products 
ADD CONSTRAINT chk_product_availability 
CHECK (product_available IN ('Yes', 'No'));
