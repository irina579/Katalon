select * from dwh.ArtistNotes
where DisciplineId > 1
--and OnesTypeId = 'A'
---and IsActualised = 0
and (DisciplineId < BuId
or DepartmentId < BuId
or DisciplineId > BuId + 1000
or DepartmentId> BuId +1000) --and lastUpdate='2021-01-29'
