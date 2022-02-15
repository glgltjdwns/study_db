
INSERT INTO `nct`.`infrmemberaddressonline`
(
`ifaoTypeCd`,
`ifaoDefaultNy`,
`ifaoSnsTypeCd`,
`ifaoUrl`,
`ifaoTitle`,
`ifaoDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
33,
1,
36,
'www.twitter.com',
'트위터',
1,
now(),
now(),
now(),
now(),
2
);

select * from infrmemberaddressonline;