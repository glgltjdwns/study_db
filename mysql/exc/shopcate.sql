INSERT INTO `shop`.`shopcate`
(
`shcaName`,
`shcaParents`,
`shcaDepth`,
`shcaUseNy`,
`shcaOrder`,
`shcaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
"트레이닝복",
12,
3,
1,
5,
0,
now(),
now(),
now(),
now()
);

select * from shopcate;


WITH RECURSIVE CteCate(shcaSeq, shcaParents, ParentsName, shcaName, depth, orderString, shcaOrder, shcaDepth) AS 
(
    select shcaSeq, shcaParents, cast('' as char(30)), shcaName, 0, cast(shcaSeq as char(10)), shcaOrder, shcaDepth from shopcate where shcaParents is null
    UNION ALL
    select d.shcaSeq, d.shcaParents, cte.shcaName, d.shcaName, depth + 1, concat(cte.orderString, '-', d.shcaOrder), d.shcaOrder, d.shcaDepth from shopcate d inner join CteCate cte on d.shcaParents = cte.shcaSeq
)
select * from CteCate order by orderString;