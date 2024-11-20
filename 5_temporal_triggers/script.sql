-- Write your SQL code here


CREATE EVENT Communication_reminder_event
ON SCHEDULE EVERY 1 DAY -- the event will execute daily
STARTS CURRENT_TIMESTAMP + INTERVAL 3 MINUTE -- Starts 3 minutes after the event is created
DO
BEGIN
    UPDATE communication logs --this table has columns that can log the reminders and the employee Id 
    SET communication_log_code = NOW() -- Set current timestamp as a reminder
    WHERE employeeID IN 
    (
        SELECT employeeID
        FROM communication log
        WHERE DATE(date_of_communication) = DATE_ADD(CURDATE(), INTERVAL 3 DAY) -- 3 days from today
    );
END;


/* budget review event*/

CREATE EVENT Budget_Review_event
ON SCHEDULE EVERY 1 DAY -- event runs daily
STARTS CURRENT_TIMESTAMP + INTERVAL 3 MINUTE
DO
BEGIN
    -- Define a threshold for procurement budget (e.g., 100,000)
    DECLARE budget_threshold DECIMAL(15, 3) DEFAULT 100000.000;

    -- Check and update budget that exceed the threshold for review

    UPDATE procurement
    SET review_needed = TRUE
    WHERE order_amount > budget_threshold AND review_needed = FALSE;

END ;





















