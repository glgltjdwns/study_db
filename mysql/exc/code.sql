INSERT INTO `nct`.`infrcode`
(
`ifcdName`,
`ifcdUseNy`,
`ifcdOrder`,
`ifcdDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifcgSeq`)
VALUES
(
"하고싶은꿈",
1,
3,
0,
now(),
now(),
now(),
now(),
14);


select * from infrcode;
update infrcode set
	ifcdUseNy = '1'
	
where 1=1
	and ifcdseq = 40;



select
a.ifcgSeq
,a.ifcgName
,b.ifcdSeq
,b.ifcdName
,b.ifcdOrder
from infrcodegroup a
	left join infrcode b on b.ifcgSeq = a.ifcgSeq
order by a.ifcgSeq, b.ifcdOrder; 

