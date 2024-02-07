DROP TABLE IF exists
  `categories`;
CREATE TABLE categories(
  `categoryId` INT AUTO_INCREMENT PRIMARY KEY,
  `categoryName` VARCHAR(100) UNIQUE NOT NULL
);

SHOW CREATE TABLE categories \G

DROP TABLE IF exists
  `vendors`;
CREATE TABLE vendors(
  `vendorId` INT AUTO_INCREMENT PRIMARY KEY,
  `vendorname` varchar(25) UNIQUE NOT NULL
);

SHOW CREATE TABLE vendors \G
DROP TABLE IF exists
  `products`;
CREATE TABLE `products` (
  `productId` INT AUTO_INCREMENT PRIMARY KEY,
  `productName` VARCHAR(100) UNIQUE NOT NULL,
  `categoryId` INT,
  `vendorId` INT,

  CONSTRAINT `fk_category`
    FOREIGN KEY(categoryId)
    REFERENCES categories(categoryId),
  CONSTRAINT `fk_vendors`
    FOREIGN KEY(vendorId)
    REFERENCES vendors (vendorId)
  );

  SHOW CREATE TABLE products \G

  DROP TABLE IF EXISTS `departments`;
  CREATE TABLE departments (
    `depId` INT AUTO_INCREMENT PRIMARY KEY,
    `deptname` VARCHAR(50) UNIQUE
  );
  SHOW CREATE TABLE departments \G
