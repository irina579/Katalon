select * from dbo.ArtistDepartmentDiscipline
where DisciplineId in (select DisciplineId from [dbo].[Disciplines] where DisciplineName  in ('PS Shared Technology' ))
and (ContractEndDate is null or ContractEndDate > GETUTCDATE()) and EmployeeType in ('Perm','Con')


select * from dbo.ArtistDepartmentDiscipline
where DisciplineId in (select DisciplineId from [dbo].[Disciplines] where DisciplineName  in ('Homerun' ))
and (ContractEndDate is null or ContractEndDate > GETUTCDATE()) and EmployeeType in ('Perm','Con')

select * from dbo.ArtistDepartmentDiscipline
where DisciplineId =37