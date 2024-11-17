-- Write your SQL code here

CREATE TRIGGER TRG_B_Insert_products  
BEFORE 
INSERT 
ON  
products 

INSERT INTO 
`productID` = OLD.`productID` ,
`product_name` =OLD.`product_name`,
`product_group` =OLD.`product_group` ,
`product_available` =OLD.`product_available` ,
`supplierID`=OLD.`supplierID` ,
`supplier_name` =OLD.`supplier_name`, 








END

