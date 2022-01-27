use world;

CREATE TABLE IF NOT EXISTS `world`.`book6` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB ;


CREATE TABLE IF NOT EXISTS `world`.`writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB ; 

CREATE TABLE IF NOT EXISTS `world`.`book6_writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `book6_seq` INT UNSIGNED NOT NULL,
  `writer_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`, `writer_seq`),
  INDEX `fk_book6_writer_book6_idx` (`book6_seq` ASC) VISIBLE,
  INDEX `fk_book6_writer_writer1_idx` (`writer_seq` ASC) VISIBLE,
  CONSTRAINT `fk_book6_writer_book6`
    FOREIGN KEY (`book6_seq`)
    REFERENCES `world`.`book6` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book6_writer_writer1`
    FOREIGN KEY (`writer_seq`)
    REFERENCES `world`.`writer` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB ; 


insert into book6 (
name

)values(
'html'
);

insert into writer (
name

)values (

'전지현'

);

insert into book6_writer (
book6_seq
,writer_seq

)values(
3
,5
); 

select * from writer;

select
a.no
,a.name
,b.writer_seq
,(select name from writer c where c.no = b.writer_seq) as writer_name
from book6 a
left join book6_writer b on b.book6_seq = a.no
-- left join b on b.
;






select
a.no
,a.name
,b.writer_seq
,c.name
from book6 a
left join book6_writer b on b.book6_seq = a.no
left join writer c on c.no =b.writer_seq
;





