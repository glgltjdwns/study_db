use world;




create table cafe  (
	seq int,
	cafename varchar(100),
    number_of_tables int,
    number_of_chairs int,
    address varchar(100),
    area varchar(100),
    RepresentativeName varchar (100)
    
);


CREATE TABLE IF NOT EXISTS `caft` (
  `sqe` INT NOT NULL,
  `cafename` VARCHAR(100) NULL,
  `number_of_tables` INT NULL,
  `number_of_chairs` INT NULL,
  `address` VARCHAR(100) NULL,
  `area` VARCHAR(100) NULL,
  `RepresentativeName` VARCHAR(100) NULL,
  PRIMARY KEY (`sqe`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci













