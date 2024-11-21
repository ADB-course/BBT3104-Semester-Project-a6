-- Write your SQL code here
--Phone Number Area Code Constraint
ALTER TABLE employee_phone_number
ADD CONSTRAINT chk_phone_number_format
CHECK (employee_phone_number REGEXP '^\\+254[0-9]{9}$');


--Valid Communication Log Date Constraint
ALTER TABLE communication_log
ADD CONSTRAINT chk_communication_date
CHECK (date_of_communication <= NOW());



