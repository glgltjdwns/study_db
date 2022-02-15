INSERT INTO `nct`.`infrauthmenu`
(
`ifauRoleCd`,
`ifauUseNy`,
`ifauOrder`,
`ifauDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifatSeq`,
`ifmuSeq`)
VALUES
(
52,
1,
2,
1,
now(),
now(),
now(),
now(),
2,
2
);

select * from infrauthmenu; 

select
	a.ifatSeq
    ,(select ifatName from infrauth where ifatSeq = a.ifatSeq) as ifatName
    ,a.ifmuSeq
    ,(select ifmuName from infrmenu where ifmuSeq = a.ifmuSeq) as ifmuName
    ,a.ifauRoleCd
    ,(select ifcdName from infrcode where ifcdSeq = a.ifauRoleCd) as ifauRoleName
  from infrauthmenu a
  where 1=1
	and a.ifatseq = 2
    ;
 
    