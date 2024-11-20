-- Write your SQL code here

/* The first two triggers is to first:insert new products in the inventory and the second trigger is 
for making changes if the number of stock changes in anyway, (through any sale or maybe a refund) */



CREATE TRIGGER TRG_Before_Insert_Products  
BEFORE INSERT ON  products 
        FOR EACH ROW
BEGIN

   IF NEW.stock IS NULL THEN
   SET NEW.stock = 0;
   
   END IF;
   
 END


CREATE TRIGGER TRG_After_Update_Products
AFTER UPDATE ON products
       FOR EACH ROW
BEGIN
    
    INSERT INTO products (productID, product_name, product_group, product_available)
    VALUES ( OLD.productID,OLD.product_name,OLD.product_group,OLD.product_available,NEW.product_available); 

END;


/*triggers for communication logs */

CREATE TRIGGER TRG_Before_Insert_communication_log
BEFORE INSERT ON Communication logs
      FOR EACH ROW
BEGIN
   
   IF NEW.date_of_communication IS NULL THEN
      SET NEW.date_of_communication = NOW();
   
    END IF;
    
END;







    

