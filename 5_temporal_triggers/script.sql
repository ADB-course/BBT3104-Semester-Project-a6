-- Write your SQL code here
CREATE EVENT daily_communication_log
ON
SCHEDULE EVERYDAY +INTERVAL 5 MINUTE
STARTS current_timestamp
DO 
UPDATE communication_log
SET last_checked= NOW();
