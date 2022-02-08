INSERT INTO `nct`.`infrcodegroup`
(
`ifcgName`,
`ifcgUseNy`,
`ifcgOrder`,
`ifcgDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(

'회원보안질문.구분',
1,
14,
0,
now(),
now(),
now(),
now()
)
;

select * from infrcodegroup;

update infrcodegroup
set ifcgDelNy = 1
where ifcgSeq > 10;


