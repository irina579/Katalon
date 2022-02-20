--select *from dwh.Ones where ShowId='714' and ExtractDataType='S'--810
select count (ArtistId), GlobalId-- ExtractDataType='S'--810
from dwh.Artist --where ExtractDataType='S' and Period>'2020-12-30' and ShowId=810 and Scenario=0--and Period<'2021-12-20'  --and BuId in (2)
--and ShowId=909 --
group by GlobalID
having count (ArtistId)>1 order by 1
