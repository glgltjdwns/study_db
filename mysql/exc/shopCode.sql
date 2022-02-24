INSERT INTO `shop`.`shopcode`
(
`shcdName`,
`shcdUseNy`,
	`shcdOrder`,
	`shcdDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`shcgSeq`)
VALUES
(

"XXXL",
1,
8,
0,
now(),
now(),
now(),
now(),
12
);


select
a.shcgSeq
,a.shcgName
,b.shcdSeq
,b.shcdName
,b.shcdOrder
from shopcodegroup a
	left join shopcode b on b.shcgSeq = a.shcgSeq
    order by a.shcgSeq, b.shcdOrder;



