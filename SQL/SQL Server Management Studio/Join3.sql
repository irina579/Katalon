/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
  FROM dwh.ArtistDepartmentDiscipline_UserAssigned as o
join dwh.Artist as a on a.ArtistId=o.ArtistId  
where a.BuId like '500%'
and o.DisciplineId like '20%'




--and OnesTypeId = 'A'
--and IsActualised = 0
--and (o.DisciplineId < o.BuId
--or o.DepartmentId < o.BuId
--or o.DisciplineId > o.BuId + 1000
--or o.DepartmentId > o.BuId +1000) --and lastUpdate='2021-01-29'
 --and a.EmployeeType in ('Perm','Con') ---and o.ArtistId=100947
