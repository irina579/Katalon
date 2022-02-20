select * from dbo.ArtistDepartmentDiscipline
--join ref.ArtistLevel on 
--where ArtistId=94765
where ((LevelId-SiteId)>100 or (SiteId-LevelId)>100)
and LabourTypeId='D'
order by ArtistId
--and OnesTypeId = 'A'
---and IsActualised = 0
--and LevelId < SiteId
--or DepartmentId < BuId
--or DisciplineId > BuId + 1000
--or DepartmentId> BuId +1000) --and lastUpdate='2021-01-29'
Select* from dwh.Artist where ArtistId=95313