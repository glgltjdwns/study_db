use world;

CREATE TABLE IF NOT EXISTS `world`.`book5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`review5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `book5_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`, `book5_no`),
  INDEX `fk_review5_book51_idx` (`book5_no` ASC) VISIBLE,
  CONSTRAINT `fk_review5_book51`
    FOREIGN KEY (`book5_no`)
    REFERENCES `world`.`book5` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

desc book5;

insert into book5 (
name
)values(
'4차산업혁명의미래'
);


select * from book5;

insert into review5 (
comment
,book5_no
)values(
'우와 책 재미 있습니다.'
,5
);

desc review5;
-- Error code: 1364. Field 'book5_no' doesn't have a default value

select * from review5;

-- 점선 : nonidentufying : 부모자식관계 : 개발하기 좀 불편하다
-- 실선 : identifying : ???? : 개발용이성 높다

select 
a.name
,(select count(no) from review5 where book5_no = a.no) as count
from book5 a
;

select
a.name 
, b.comment
from book5 a 
-- left join review5 b on b.book5_no = a.no
inner join review5 b on b.book5_no = a.no
;

select 
a.comment
,b.name
from review5 as a
inner join book5 as b on b.no =a.book5_no
;

