
use world;

show tables;

-- 주석
-- 테이블 생성
create table member (
	seq int,
    name varchar(100),
    id varchar(100),
    regdate datetime
);

create table member2 (
	seq int,
    name varchar(100),
    id varchar(100),
    regdate datetime
);

-- 테이블 삭제

drop table member2;
drop table member;

-- 데이터 입력

insert into cafe (

	seq
    ,cafename
    ,number_of_tables
    ,number_of_chairs
    ,address
    ,area
    ,RepresentativeName

	)values (
    
	1
    ,'장소'
    ,1
    ,2
    ,'ㅇㅇㅇ'
    ,'어딘가'
    ,'대표'

    );
    
-- varchar dms ' 또는 " 로 감싼다.
-- int 는 사용하지 않다오 된다.
-- 컴마는 앞쪽을 선호 : 이건 호불호가 갈린다.

-- 데이터 조회
	
    select * from cafe;
    
	select * from cafe where seq = 2;
    select * from cafe where area = '연수역';
    select * from cafe where cafename ='메가커피';
    select * from cafe where cafename ='수박화채' and area = '연수역' and address = 14;
    select * from cafe where cafename ='오렌지카라멜' or RepresentativeName = '차장' ;
    
    select * from cafe where number_of_chairs > '10';
    select * from cafe where number_of_chairs < '10';
    select * from cafe where number_of_chairs >= '10';
    select * from cafe where number_of_chairs <= '10';
    select * from cafe where number_of_chairs <> '10';
    
    select * from cafe where cafename like '%박화%';
    select * from cafe where cafename like '박화%' ;
    select * from cafe where cafename like '%박화' ;
 




-- primary key : 유일한 데이터






-- 데이터 삭제