-- Write your SQL code here
CREATE DATABASE unga;
CREATE TABLE `procurement` (
	`procurement_department_employee_code` BIGINT(10) NOT NULL,
	`employeeID` BIGINT(10) DEFAULT NULL,
	`employee_name` VARCHAR(50) DEFAULT NULL,
	`supplier_name` VARCHAR (50) DEFAULT NULL,
	`productID` BIGINT(10) DEFAULT NULL,
	`product_name` VARCHAR(50) DEFAULT NULL
);

CREATE TABLE `suppliers`(
	`supplierID` BIGINT(10) NOT NULL,
	`supplier_name` VARCHAR(50) DEFAULT NULL,
	`supplier_number` VARCHAR(15) DEFAULT NULL,
	`product_supplied` VARCHAR(70) DEFAULT NULL,,
	`productID` BIGINT(10) DEFAULT NULL
);

CREATE TABLE `employee`(
	`employeeID` BIGINT(10) NOT NULL,
	`employee_name` VARCHAR(50) DEFAULT NULL,
	`department` VARCHAR(50) DEFAULT NULL,
	`training_level` VARCHAR(50) DEFAULT NULL,
	`employee_phone_number`
);

CREATE TABLE `communication logs`(
	`communication_log_code` BIGINT(10) NOT NULL,
	`date_of_communication`datetime DEFAULT current_timestamp(),
	`details` VARCHAR(250) DEFAULT NULL,
	`employee_name`VARCHAR(50) DEFAULT NULL,
	`employeeID` BIGINT(10) DEFAULT NULL,
	`supplier_name` VARCHAR(50) DEFAULT NULL,
	`supplierID` BIGINT(10) DEFAULT NULL
);

CREATE TABLE `supplier liason`(
	`supplier_liason_code` BIGINT(10) NOT NULL,
	`employeeID` BIGINT(10) DEFAULT NULL,
	`employee_name` VARCHAR(50) DEFAULT NULL,
	`supplierID` BIGINT(10) DEFAULT NULL,
	`communication_log_code` BIGINT(10) DEFAULT NULL,
	`date_of_communication` datetime DEFAULT current_timestamp(),
	`details` VARCHAR(250) DEFAULT NULL
);

CREATE TABLE `products`(
	`productID` BIGINT(10) NOT NULL,
	`product_name` VARCHAR(50) DEFAULT NULL,
	`product_group` VARCHAR(150) DEFAULT NULL,
	`product_available` VARCHAR(150) DEFAULT NULL,,
	`supplierID` BIGINT(10) DEFAULT NULL,
	`supplier_name` VARCHAR(50) DEFAULT NULL
);


