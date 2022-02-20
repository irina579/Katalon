/****** Script for SelectTopNRows command from SSMS  ******/
SELECT count(Ones)
  FROM [Dash_Anonymise_stage].[dwh].[Ones]
 where IsActualised=1