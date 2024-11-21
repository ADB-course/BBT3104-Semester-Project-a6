-- Write your SQL code --


/* InnoDB is the most favourable engine because it's the most efficient and supports
 FK Constraints,enforces referential integrity between related tables.
Transaction Support,it provides ACID compliance, making it reliable for critical
 operations like procurement and communication logs.
*/

DROP TABLE IF EXISTS `communication_log`;
CREATE TABLE IF NOT EXISTS `communication_log` (
  `communication_log_code` varchar(10) NOT NULL,
  `date_of_communication` datetime DEFAULT current_timestamp(),
  `details` varchar(250) DEFAULT NULL,
  `employeeID` varchar(10) NOT NULL,
  `supplierID` varchar(10) NOT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `employeeID` varchar(10) NOT NULL,
  `employee_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------
--
-- Table structure for table `employee_communication`
--

DROP TABLE IF EXISTS `employee_communication`;
CREATE TABLE IF NOT EXISTS `employee_communication` (
  `employeeID`varchar(10) NOT NULL,
  `communication_log_code` varchar(10) NOT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `employee_department`
--

DROP TABLE IF EXISTS `employee_department`;
CREATE TABLE IF NOT EXISTS `employee_department` (
  `procurement_department_employee_code` varchar(10) NOT NULL,
  `employeeID` varchar(10) NOT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

DROP TABLE IF EXISTS `employee_info`;
CREATE TABLE IF NOT EXISTS `employee_info` (
  `employeeID` varchar(10) NOT NULL,
  `employee_name` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `training_level` varchar(50) DEFAULT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `employee_phone_number`
--

DROP TABLE IF EXISTS `employee_phone_number`;
CREATE TABLE IF NOT EXISTS `employee_phone_number` (
  `employeeID` varchar(10) NOT NULL,
  `employee_phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `procurement`
--

DROP TABLE IF EXISTS `procurement`;
CREATE TABLE IF NOT EXISTS `procurement` (
  `employeeID` varchar(10) NOT NULL,
  `supplierID` varchar(10) NOT NULL,
  `productID` varchar(10) NOT NULL,
  `order_amount` bigint(50) NOT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `productID` varchar(10) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

DROP TABLE IF EXISTS `product_info`;
CREATE TABLE IF NOT EXISTS `product_info` (
  `productID` varchar(10) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_group` varchar(150) DEFAULT NULL,
  `product_available` varchar(150) DEFAULT NULL,
  `supplierID` varchar(10) NOT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `product_supplied`
--

DROP TABLE IF EXISTS `product_supplied`;
CREATE TABLE IF NOT EXISTS `product_supplied` (
  `productID` varchar(10) NOT NULL,
  `supplierID` varchar(10) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `product_supplier_junction`
--

DROP TABLE IF EXISTS `product_supplier_junction`;
CREATE TABLE IF NOT EXISTS `product_supplier_junction` (
  `productID` varchar(10) NOT NULL,
  `supplierID` varchar(10) NOT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `supplierID` varchar(10) NOT NULL,
  `supplier_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_info`
--

DROP TABLE IF EXISTS `supplier_info`;
CREATE TABLE IF NOT EXISTS `supplier_info` (
  `supplierID` varchar(10) NOT NULL,
  `supplier_name` varchar(50) DEFAULT NULL,
  `supplier_phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_liaison`
--

DROP TABLE IF EXISTS `supplier_liaison`;
CREATE TABLE IF NOT EXISTS `supplier_liaison` (
  `supplier_liason_code` varchar(10) NOT NULL,
  `employeeID` varchar(10) NOT NULL,
  `supplierID` varchar(10) NOT NULL
) ENGINE=InnoDB;
