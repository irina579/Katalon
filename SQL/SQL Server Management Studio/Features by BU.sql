/****** Script for SelectTopNRows command from SSMS  ******/
SELECT FeatureId, c.Name, f.BusinessUnitId, a.Name, IsEnabled
  FROM [Config].[BusinessUnitFeatures] as f
  join dbo.Entities as a on a.EntityId=f.BusinessUnitId
  join Config.Features as c on f.FeatureId=c.Id order by FeatureId