/****** Script for SelectTopNRows command from SSMS  ******/
SELECT distinct o.DepartmentEntityId, o.SiteEntityId,e.Name
  FROM [Dash_Anonymise_stage].[dwh].[Ones] as o
  join dwh.Artist as a on o.ArtistId=a.ArtistId
  join dbo.Entities as e on e.EntityId=o.DepartmentEntityId
  where o.ExtractDataType='D' and o.StatusId=1 and a.Virtual=1 and e.EntityType=3 and period>'2021-10-04' 
  order by o.DepartmentEntityId--and DepartmentEntityId=7