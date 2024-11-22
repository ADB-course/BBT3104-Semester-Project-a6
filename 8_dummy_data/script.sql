-- Write your SQL code here

INSERT INTO `communication_log` (`communication_log_code`, `date_of_communication`, `details`, `employeeID`, `supplierID`) VALUES
('C201', '2024-11-21 15:11:15', 'Supply will be delayed due to flooding', 'E101', 'S301'),
('C202', '2024-11-21 15:11:15', 'Animal feeds will be less than that ordered due to most of them being washed by the rains', 'E102', 'S302'),
('C203', '2024-11-21 15:11:15', 'Products have been dispatched and are on there way to the company warehouse', 'E103', 'S303'),
('C204', '2024-11-21 15:11:15', 'Clarification on the number of goods to be shipped to the main warehouse and mode of payment.', 'E104', 'S304'),
('C205', '2024-11-21 15:11:15', 'scheduling a meeting with the manager to discuss the terms of the contract', 'E105', 'S305');

INSERT INTO `employee` (`employeeID`, `employee_name`) VALUES
('E101', 'John Masenya'),
('E102', 'Jane Kweya'),
('E103', 'Manaa Ali'),
('E104', 'Hassan Joho'),
('E105', 'Rania Wanini');


INSERT INTO `employee_communication` (`employeeID`, `communication_log_code`) VALUES
('E101', 'C201'),
('E102', 'C202'),
('E103', 'C203'),
('E104', 'C204'),
('E105', 'C205');


INSERT INTO `employee_department` (`procurement_department_employee_code`, `employeeID`) VALUES
('PE101', 'E101'),
('PE102', 'E102'),
('PE103', 'E103'),
('PE104', 'E104'),
('PE105', 'E105');


INSERT INTO `employee_info` (`employeeID`, `employee_name`, `department`, `training_level`) VALUES
('E101', 'John Masenya', 'Procurement', 'intermediary'),
('E102', 'Jane Kweya', 'Sales', 'beginner'),
('E103', 'Manaa Ali', 'Procurment', 'Beginner'),
('E104', 'Hassan Joho', 'Customer Care', 'intermediary'),
('E105', 'Rania Wanini', 'sales', 'Pro');


INSERT INTO `employee_phone_number` (`employeeID`, `employee_phone_number`) VALUES
('E101', '+254756543221'),
('E102', '+254743326675'),
('E103', '+254723431245'),
('E104', '+254798457629'),
('E105', '+254732155643');

INSERT INTO `procurement` (`employeeID`, `supplierID`, `productID`, `order_amount`) VALUES
('E101', 'S301', 'P401', 55),
('E102', 'S302', 'P402', 600),
('E103', 'S303', 'P403', 3443),
('E104', 'S304', 'P404', 2000),
('E105', 'S305', 'P405', 4000);


INSERT INTO `products` (`productID`, `product_name`) VALUES
('P401', 'Barely'),
('P402', 'Wheat'),
('P403', 'Maize seeds'),
('P404', 'Animal feeds'),
('P405', 'Flour');


INSERT INTO `product_info` (`productID`, `product_name`, `product_group`, `product_available`, `supplierID`) VALUES
('P401', 'Barely', 'Dry food-carbohydrates', '550 kgs ', 'S301'),
('P402', 'Wheat', 'Dry foods-carbohydrates', '60000 kgs ', 'S302'),
('P403', 'Maize seeds', 'Dry food- carbohydrates', '10  tonnes', 'S303'),
('P404', 'Animal feeds', 'Animals', '10 tonnes', 'S304'),
('P405', 'Flour', 'processed food', '19 tonnes', 'S305');


INSERT INTO `product_supplied` (`productID`, `supplierID`, `product_name`) VALUES
('P401', 'S301', 'Barely'),
('P402', 'S302', 'Wheat'),
('P403', 'S303', 'Maize seeds'),
('P404', 'S304', 'Animal feeds'),
('P405', 'S305', 'Flour');


INSERT INTO `product_supplier_junction` (`productID`, `supplierID`) VALUES
('P401', 'S301'),
('P402', 'S302'),
('P403', 'S303'),
('P404', 'S304'),
('P405', 'S305');


INSERT INTO `suppliers` (`supplierID`, `supplier_name`) VALUES
('S301', 'mimi ada'),
('S302', 'Ivy joy'),
('S303', 'Mukami Wangaru'),
('S304', 'Jonathan Kamau'),
('S305', 'James Awiyo');


INSERT INTO `supplier_info` (`supplierID`, `supplier_name`, `supplier_phone_number`) VALUES
('S301', 'Sokote Farms', '+254765432333'),
('S302', 'Amako Farms and Produce', '+254798990088'),
('S303', 'Panaa Farms', '+254777667008'),
('S304', 'Wekosa Farms', '+254755439090'),
('S305', 'Sakamaka Farms', '+254732145432');


INSERT INTO `supplier_liaison` (`supplier_liason_code`, `employeeID`, `supplierID`) VALUES
('SL801', 'E101', 'S301'),
('SL802', 'E102', 'S302'),
('SL803', 'E103', 'S303'),
('SL804', 'E104', 'S304'),
('SL805', 'E105', 'S305');