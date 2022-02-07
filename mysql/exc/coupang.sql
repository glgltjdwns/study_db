use world;
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

CREATE TABLE IF NOT EXISTS `world`.`lilipaCode` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `genderCd` TINYINT(1) NULL COMMENT '1.남성  2.여성 3.기타',
  `NationalityCd` TINYINT(1) NULL COMMENT '82.대한민국 1.미국 84.베트남 44.영국 61.오스트레일리아 81.일본 86.중국  66.타이 63.필리핀',
  `AddressTypeCd` TINYINT(1) NULL COMMENT '1.집 2.회사',
  `PhoneTypeCd` TINYINT(1) NULL COMMENT '1.개인전화 2.회사전화 3.집전화',
  `EmailCd` TINYINT(1) NULL COMMENT '1.직접입력 2.네이버 3.다음 4.구글 5.네이트',
  `SnsTypeCd` TINYINT(1) NULL COMMENT '1.페이스북 2.인스타그램 3.트위터 4.카카오톡',
  `hobbyCd` TINYINT(1) NULL COMMENT '1.등산 2.낚시 3.게임 4.독서 5.기타',
  `MarruageCd` TINYINT(1) NULL COMMENT '1.결혼 2.비결혼 3.이혼',
  `PasswordQuestionCd` TINYINT(1) NULL COMMENT '1.태어난고향 2.하고싶던꿈 3.부모님성함 4.좋아하는색',
  `jodTypeCd` TINYINT(1) NULL COMMENT '1.공무원 2.직장인 3.개인사업가 4.무직',
  `consentCd` TINYINT(1) NULL COMMENT '1.동의 2.비동의',
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `world`.`lilipaCodename` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `genderCdname` VARCHAR(45) NOT NULL,
  `NationalityCdname` VARCHAR(45) NULL,
  `AddressTypeCdname` VARCHAR(45) NULL,
  `PhoneTypeCdname` VARCHAR(45) NULL,
  `EmailCdname` VARCHAR(45) NULL,
  `SnsTypeCdname` VARCHAR(45) NULL,
  `hobbyCdname` VARCHAR(45) NULL,
  `MarruageCdname` VARCHAR(45) NULL,
  `PasswordQuestionCdname` VARCHAR(45) NULL,
  `jodTypeCdname` VARCHAR(45) NULL,
  `consentCdname` VARCHAR(45) NULL,
  `lilipaCode_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`, `lilipaCode_seq`, `genderCdname`),
  INDEX `fk_lilipaCodename_lilipaCode1_idx` (`lilipaCode_seq` ASC) VISIBLE,
  CONSTRAINT `fk_lilipaCodename_lilipaCode1`
    FOREIGN KEY (`lilipaCode_seq`)
    REFERENCES `world`.`lilipaCode` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into lilipacodename (
genderCdname
,NationalityCdname
,AddressTypeCdname
,PhoneTypeCdname
,EmailCdname
,SnsTypeCdname
,hobbyCdname
,MarruageCdname
,PasswordQuestionCdname
,jodTypeCdname
,consentCdname
)values(
'남성'
,'대한민국'
,'집'
,'개인전화'
,'직접입력'
,'페이스북'
,'등산'
,'결혼'
,'태어난고향'
,'공무원'
,'동의'
);


select * from lilipacodename;




insert into lilipacode (
genderCd
,NationalityCd
,AddressTypeCd
,PhoneTypeCd
,EmailCd
,SnsTypeCd
,hobbyCd
,MarruageCd
,PasswordQuestionCd
,jodTypeCd
,consentCd
)values(
2
,1
,2
,2
,2
,2
,2
,2
,2
,2
,2
);

select * from lilipacode;






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



