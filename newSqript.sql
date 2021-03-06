DROP TABLE IF EXISTS `stuff`;
DROP TABLE IF EXISTS `item_location`;
DROP TABLE IF EXISTS `shop`;
DROP TABLE IF EXISTS `item`;
DROP TABLE IF EXISTS `type_of_item`;

CREATE TABLE shop (
  `ID` INT(10) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(20) NOT NULL,
  `SHOP_LOCATION` VARCHAR(50) NOT NULL,
  `ROOM_AREA` INT(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE stuff (
  `ID` INT(10) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(20) NOT NULL,
  `SURNAME`VARCHAR(20) NOT NULL,
  `SALARY` INT(10) NOT NULL,
  `SHOP_ID` INT(10) NOT NULL,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (SHOP_ID) REFERENCES shop(ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE type_of_item (
  `ID` INT(10) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(20) NOT NULL,
  `DESCRIPTION` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE item (
  `ID` INT(10) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(20) NOT NULL,
  `PRICE` INT(10) NOT NULL,
  `TYPE_ID` INT(10) NOT NULL,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (TYPE_ID) REFERENCES type_of_item(ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE item_location (
  `ID` INT(10) NOT NULL AUTO_INCREMENT,
  `ITEM_ID` INT(10) NOT NULL,
  `SHOP_ID` INT(10) NOT NULL,
  `QUANTITY` INT(10) NOT NULL,
  FOREIGN KEY (ITEM_ID) REFERENCES item(ID),
  FOREIGN KEY (SHOP_ID) REFERENCES shop(ID),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


