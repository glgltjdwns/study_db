INSERT INTO `nct`.`infrmemberaddress`
(
`ifmaDefaultNy`,
`ifmaTypeCd`,
`ifmaAddress1`,
`ifmaAddress2`,
`ifmaZip`,
`ifmaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
1,
46,
"인천연수구",
"제비트레빌.202호",
411578,
0,
now(),
now(),
now(),
now(),
2);

select * from infrmemberaddress;

update  infrmemberaddress set
	ifmaDefaultNy = '1'
  
where 1=1
	and ifmaSeq = 1;


