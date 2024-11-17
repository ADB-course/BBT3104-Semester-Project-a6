-- Write your SQL code here

CREATE TRIGGER TRG_Before_Insert_Products  
BEFORE INSERT ON  products 
        FOR EACH ROW
BEGIN

   IF NEW.product_available IS NULL THEN
    SET NEW.product_available= 0;

   END IF;


CREATE TRIGGER TRG_After_Insert_Products
AFTER INSERT ON products
FOR EACH ROW
BEGIN

    INSERT INTO products (productID, product_name, product_available)
    VALUES (NEW.productID, NEW.product_name, NEW.product_available);
END;





/*CREATE TRIGGER TRG_Before_Upate_Products
BEFORE UPDATE ON products
  FOR EACH ROW

  BEGIN 
  --stock level is above zero

  IF NEW.product_available < 0 THEN
     SET NEW.product_available =0;
     END IF;//





    

