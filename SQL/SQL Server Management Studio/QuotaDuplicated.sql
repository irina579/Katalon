/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT *
  --FROM [Dash_Anonymise_future_prod].[dwh].[ShowOnesQuota]


select count (Value), Date-- ExtractDataType='S'--810
from [dwh].[ShowOnesQuota] --where ExtractDataType='S' and Period>'2020-12-30' and ShowId=810 and Scenario=0--and Period<'2021-12-20'  --and BuId in (2)
--and ShowId=909 --
where MetricTypeId=1
group by Date, UniqueFilterId
having count (Value)>1 order by 1