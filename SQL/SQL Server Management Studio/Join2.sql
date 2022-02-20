--select *from dwh.Artist where ArtistId=100506
select *from dbo.ArtistDepartmentDiscipline --where EmployeeType not in ('Perm','Con')
join dbo.ArtistAdditionalInfo on dbo.ArtistDepartmentDiscipline.ArtistId=dbo.ArtistAdditionalInfo.ArtistId where ArtistDepartmentDiscipline.EmployeeType not in ('Perm','Con') and ArtistAdditionalInfo.ApprovalStatus=4