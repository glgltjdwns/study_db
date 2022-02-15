INSERT INTO `nct`.`infrmenu`
(
`ifmuAdminNy`,
`ifmuName`,
`ifmuParents`,
`ifmuDepth`,
`ifmuUseNy`,
`ifmuOrder`,
`ifmuDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
1,
"메뉴관리",
3,
1,
1,
5,
0,
now(),
now(),
now(),
now()
);

select * from infrmenu;

update infrmenu set
	ifmuDepth = '2'
   
where 1=1
	and ifmuseq = 11;