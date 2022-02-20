/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
  FROM [Dash_Anonymise_stage].[dwh].[artist] where ArtistUsername='matthew-t'
  
  --[dbo].[UserProfile] where UserName like 'Sabrina%'
  select * from dwh.Artist where ArtistUsername like 'department%'--'Sabrina-m'
  select * from dwh.Artist where ManagerId=114609--205902
  select * from dwh.Artist where ManagerId=205902

  
-- UPDATE dwh.artist
--SET managerId='114609'
--WHERE artistid=109645