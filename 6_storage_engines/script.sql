-- Write your SQL code here
--FATUMA


/* InnoDB is the most favourable engine because it's the most efficient and supports
 FK Constraints,enforces referential integrity between related tables.
Transaction Support,it provides ACID compliance, making it reliable for critical
 operations like procurement and communication logs.
*/

CREATE TABLE `employee`(
	`employeeID` BIGINT(10) NOT NULL,
	`employee_name` VARCHAR(50) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE `suppliers`(
	`supplierID` BIGINT(10) NOT NULL,
	`supplier_name` VARCHAR(50) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE `products`(
	`productID` BIGINT(10) NOT NULL,
	`product_name` VARCHAR(50) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE `employee_department`(
	`procurement_department_employee_code` BIGINT(10) NOT NULL,
	`employeeID` BIGINT(10) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE `procurement`(
	`employeeID` BIGINT(10) NOT NULL,
	 `supplierID` BIGINT(10) NOT NULL,
	 `productID` BIGINT(10) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE `supplier_info`(
	`supplierID` BIGINT(10) NOT NULL,
	`supplier_name` VARCHAR(50) DEFAULT NULL,
	`supplier_phone_number` VARCHAR(15) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE `product_supplied`(
	`productID` BIGINT(10) NOT NULL,
	`supplierID` BIGINT(10) NOT NULL,
	`product_name` VARCHAR(50) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE `employee_info`(
	`employeeID` BIGINT(10) NOT NULL,
	`employee_name` VARCHAR(50) DEFAULT NULL,
	`department` VARCHAR(50) DEFAULT NULL,
	`training_level` VARCHAR(50) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE `employee_phone_number`(
	`employeeID` BIGINT(10) NOT NULL,
	`employee_phone_number` VARCHAR(15) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE `communication_log`(
	`communication_log_code` BIGINT(10) NOT NULL,
	`date_of_communication`datetime DEFAULT current_timestamp(),
	`details` VARCHAR(250) DEFAULT NULL,
	`employeeID` BIGINT(10) NOT NULL,
	`supplierID` BIGINT(10) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE `supplier_liaison`(
	`supplier_liason_code` BIGINT(10) NOT NULL,
	`employeeID` BIGINT(10) NOT NULL,
	 `supplierID` BIGINT(10) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE `employee_communication`(
	`employeeID` BIGINT(10) NOT NULL,
	`communication_log_code` BIGINT(10) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE `product_info`(
	`productID` BIGINT(10) NOT NULL,
	`product_name` VARCHAR(50) DEFAULT NULL,
	`product_group` VARCHAR(150) DEFAULT NULL,
	`product_available` VARCHAR(150) DEFAULT NULL,
	`supplierID` BIGINT(10) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE `product_supplier_junction`(
	`productID` BIGINT(10) NOT NULL,
	`supplierID` BIGINT(10) NOT NULL
) ENGINE=InnoDB;
