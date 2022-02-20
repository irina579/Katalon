/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *  FROM Performance.ArtistInfos
join dbo.ArtistDepartmentDiscipline on Performance.ArtistInfos.Id=dbo.ArtistDepartmentDiscipline.PerformanceArtistInfoId