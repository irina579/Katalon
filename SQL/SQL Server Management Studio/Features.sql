/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [BusinessUnitId]
,e.Name
      ,[FeatureId]
      ,[IsEnabled]
	  
	  ,c.Name
  FROM [Config].[BusinessUnitFeatures] as f
  join dbo.Entities as e
  on f.BusinessUnitId=e.EntityId
  join Config.Features as c
  on f.FeatureId=c.Id
  where f.FeatureId in (10, 11) order by FeatureId