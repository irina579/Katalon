--select *from dwh.Artist where GlobalID=217006--ArtistUsername='anoop-p'
--select *from dbo.ArtistDepartmentDiscipline where ArtistId=66405
select * from dwh.artistnotes where ArtistId in (


select ArtistId
from dwh.artistnotes
where ExtractDataType='D'
group by ArtistId, SiteId, DepartmentId, ShotTeamId, BuId
having count(*)>1
) 
and ExtractDataType='D'
order by ArtistId
--where ArtistId=66405