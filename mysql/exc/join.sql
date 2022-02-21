select
a.ifmmSeq
,a.ifmmName
,a.ifmmID
,a.ifmmGenderCd
,(select ifcdName from infrcode where ifcdSeq = a.ifmmGenderCd) as ifmmGenderCd
,a.ifmmDob
,a.ifmmSeavedCd
,(select ifcdName from infrcode where ifcdSeq = a.ifmmSavedCd) as ifmmSavedCd
,a.ifmmMarriageCd
,(select ifcdName from infrcode where ifcdSeq = a.ifmmMarriageCd) as ifmmMarriageCd
,a.ifmmChildrenNum
,b.ifmaTypeCd
,(select ifcdName from infrcode where ifcdSeq =b.ifmaTypeCd) as ifmaTypeCd
,b.ifmaTitle
,b.ifmaAddress1
,b.ifmaAddress2
,b.ifmaZip
,c.ifaoTypeCd
,(select ifcdName from infrcode where ifcdSeq = c.ifaoTypeCd) as ifaoTypeCd
,c.ifaoSnsTypeCd
,(select ifcdName from infrcode where ifcdSeq = c.ifaoSnsTypeCd) as ifaoSnsTypeCd
,c.ifaoUrl
,c.ifaoTitele
,d.ifmeTypeCd
,(select ifcdName from infrcode where ifcdSeq = d.ifmeTypecd) as ifmeTypeCd
,d.ifmeEmailFull
,e.ifjqQuestionCd
,(select ifcdName from infrcode where ifcdSeq = e.ifjqQuestionCd) as ifjqQuestionCd
,e.ifjqAnswer
,f.ifmpTypeCd
,(select ifcdName from infrcode where ifcdSeq = f.ifmpTypeCd) as ifmpTypeCd
,f.ifmpDeviceCd
,(select ifcdName from infrcode where ifcdSeq = f.ifmpDeviceCd) as ifmpDeviceCd
,f.ifmpTelecomCd
,(select ifcdName from infrcode where ifcdSeq = f.ifmpTelecomCd) as ifmpTelecomCd
,f.ifmpNumber

from
infrmember
left join infrmemberaddress b on b.ifmmseq = a.ifmmseq
left join infrmemberaddressonline c on c.ifmmseq = a.ifmmseq
left join infrmemberemail d on d.ifmmseq = a.ifmmseq
left join infrmemberjoinqna e on e.ifmmseq = a.ifmmseq
left join infrmemberphone f on f.ifmmseq = a.ifmmSeq

where
	b.ifmaDefaultNy = 0
    and c.ifaoDefaultNy = 0
    and d.ifmeDefaultNy = 0
    and e.ifjqDefaultNy = 0
    and f.ifmpDefaultNy = 0 ;


