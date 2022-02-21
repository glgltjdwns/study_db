INSERT INTO `nct`.`infrmemberphone`
(
`ifmpDefaultNy`,
`ifmpTypeCd`,
`ifmpDeviceCd`,
`ifmpTelecomCd`,
`ifmpNumber`,
`ifmeDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
1,
21,
25,
28,
'010-7415-8774',
0,
now(),
now(),
now(),
now(),
2
);

select * from infrmemberphone;

update infrmemberphone set
	ifmpDefaultNy = '1'
   
where 1=1
	and ifrpseq = 1;
    
  
    