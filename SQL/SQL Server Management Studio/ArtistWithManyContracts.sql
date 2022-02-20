--select *from dwh.Ones where ShowId='714' and ExtractDataType='S'--810
select count (DayRate), ArtistId-- ExtractDataType='S'--810
from dbo.ArtistDepartmentDiscipline where DayRate!=10--where ExtractDataType='S' and Period>'2020-12-30' and ShowId=810 and Scenario=0--and Period<'2021-12-20'  --and BuId in (2)
--and ShowId=909 --
group by ArtistId
having count (DayRate)>2 order by 1
