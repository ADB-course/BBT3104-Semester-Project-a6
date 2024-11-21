-- Write your SQL code here
--Phone Number Area Code Constraint
ALTER TABLE product_info
ADD CONSTRAINT chk_product_available
CHECK (product_available IN ('Yes', 'No'));

--Valid Communication Log Date Constraint
ALTER TABLE communication_log
ADD CONSTRAINT chk_communication_date
CHECK (date_of_communication <= NOW());



