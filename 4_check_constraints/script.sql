-- Write your SQL code here
--
ALTER TABLE products 
ADD CONSTRAINT chk_product_group 
CHECK (product_group IN ('Electronics', 'Furniture', 'Groceries'));
