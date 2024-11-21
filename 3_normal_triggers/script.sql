-- Write your SQL code here

/* The first two triggers is to first:have an alert for inserting new products in the inventory and the second trigger is 
for when an update happens ,if the number of stock changes in anyway, (through any sale or maybe a refund) */



CREATE TRIGGER TRG_Before_Insert_Products  
BEFORE INSERT ON  product_info
        FOR EACH ROW
BEGIN

   IF NEW.product_available IS NULL THEN
   SET NEW.product_available = 0;
   
   END IF;
   
 END


CREATE TRIGGER TRG_After_Update_Products
AFTER UPDATE ON product_info
       FOR EACH ROW
BEGIN
    
    INSERT INTO product_info (productID, product_name, product_group,product_available,supplierID)
    VALUES (productID, product_name, product_group, product_available,NEW.product_available, supplierID); 

END;


/*triggers for communication logs */

CREATE TRIGGER TRG_Before_Insert_communication_log
BEFORE INSERT ON communication_log
      FOR EACH ROW
BEGIN
   
   IF NEW.date_of_communication IS NULL THEN
      SET NEW.date_of_communication = NOW();
   
    END IF;
    
END;







    

