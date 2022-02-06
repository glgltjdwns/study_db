CREATE TABLE IF NOT EXISTS `world`.`lilipaMember` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Number` BIGINT(11) NULL COMMENT '고객가입번호',
  `name` VARCHAR(45) NULL COMMENT '이름',
  `genderCd` TINYINT(1) NULL COMMENT '성별',
  `birthday` DATE NULL COMMENT '생일',
  `NationalityCd` TINYINT(1) NULL COMMENT '82.대한민국 1.미국 84.베트남 44.영국 61.오스트레일리아 81.일본 86.중국  66.타이 63.필리핀',
  `id` VARCHAR(45) NULL COMMENT '아이디',
  `Password` VARCHAR(256) NULL COMMENT '비밀번호',
  `recommenderNy` INT NULL COMMENT '추천인',
  `children` INT NULL COMMENT '자녀수',
  `MarruageCd` TINYINT(1) NULL COMMENT '결혼여부',
  `wedding_anniversary` DATE NULL COMMENT '결혼기념일',
  `favorite_color` VARCHAR(55) NULL COMMENT '좋아하는색',
  `EamilConsent` TINYINT(1) NULL COMMENT '이메일 수신동의여부',
  `PhoneConsent` TINYINT(1) NULL COMMENT '휴대폰 수신동의여부',
  `AboutMe` VARCHAR(100) NULL COMMENT '자기소개',
  `term` TINYINT(1) NULL COMMENT '유효기간',
  PRIMARY KEY (`seq`))
ENGINE = InnoDB ;


insert into lilipamember (
number
,name
,gendercd
,birthday
,NationalityCd
,id
,password
,recommenderny
,children
,marruagecd
,wedding_anniversary
,favorite_color
,eamilConsent
,phoneconsent
,AboutMe
,term
)values(
5
,'김신아'
,2
,19941121
,83
,'qlwel'
,'qqwesad2'
,4
,3
,1
,20210401
,'민트색'
,2
,2
,'안녕하세요.김신아입니다.'
,4
);

update lilipamember set
	id = 'gasdawds'
    ,Password = 'awdawd2'
where 1=1
	and seq = 5;

select * from lilipamember;



