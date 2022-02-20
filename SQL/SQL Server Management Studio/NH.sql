select *from dwh.Artist --where EmployeeType='NH' and DateCreated>'2020-11-24'
Join dbo.ArtistEmployeeTypeChanges  ON dwh.Artist.ArtistId = dbo.ArtistEmployeeTypeChanges.ArtistId
where EmployeeType='NH' --and DateCreated>'2020-11-25'