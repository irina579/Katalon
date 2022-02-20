SELECT *
  FROM [Permissions].[UserEnabledDepartments] as u
  join dbo.entities as e on e.EntityId=u.DepartmentId  where userid=2326


  SELECT *
  FROM [Permissions].[UserEnabledSites] as s
  join dbo.entities as e on e.EntityId=s.SiteId  where userid=2326


  SELECT *
  FROM [dwh].[ShowOnesQuotaScenario] where ShowId=1226


  SELECT *
  FROM [Permissions].[UserEnabledDepartments] as u
  join dbo.entities as e on e.EntityId=u.DepartmentId  where userid in (1177,1223,1226,1233,1258,1313,1316,1321,1343,1364,1378,1429,1479,1506,1507,1606,1648,1669,1676,1691,1697,1833,1938,1994,2056,2132,2152,2168,2237,2277,2278,2296,2326,2444,2477,2500,2506,2703,2705,2714,2716,2752,2775,2791,2796,2813,2834,2885,2981)
  --join dbo.entities as e on e.EntityId=u.DepartmentId  where userid=2326


  SELECT *
  FROM [Permissions].[UserEnabledSites] as s
  --join dbo.entities as e on e.EntityId=s.SiteId  where userid=2626
  join dbo.entities as e on e.EntityId=s.SiteId where userid in (1177,1223,1226,1233,1258,1313,1316,1321,1343,1364,1378,1429,1479,1506,1507,1606,1648,1669,1676,1691,1697,1833,1938,1994,2056,2132,2152,2168,2237,2277,2278,2296,2326,2444,2477,2500,2506,2703,2705,2714,2716,2752,2775,2791,2796,2813,2834,2885,2981)
  order  by s.userid

  SELECT *
  FROM [Permissions].[UsersPermissions] where userid=2326 and permissionid in (6,7) order by BusinessUnitId

  SELECT distinct u.userid --,p.businessunitid
  from dbo.userprofile  as u
  join [Permissions].[UsersPermissions] as p on p.userid=u.userid
  where p.permissionid in (7) and u.buid=2 and u.lastlogindate>='2021-10-04'
  order by u.userid
  --group by u.userid
  --order by BusinessUnitId
  --where userid=2326 and permissionid in (6,7) and u.buid=2 order by BusinessUnitId
 
  --select * from dbo.userentity