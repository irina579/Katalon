select s.*, d.* from
(
	select BuId, SiteEntityId, DepartmentEntityId, DisciplineId, ShowId, ArtistId, IsPotential, ShotTeamId, Period, DayOfPeriod, RowNumber from dwh.Ones
	where ExtractDataType = 'S'
		and Period >= CONVERT(DATE, DATEADD(week, DATEDIFF(week, 0, GETUTCDATE() - 1), 0))
		and Scenario = 0
		and StatusId not in (5)
	group by BuId, SiteEntityId, DepartmentEntityId, DisciplineId, ShowId, ArtistId, IsPotential, ShotTeamId, Period, DayOfPeriod, RowNumber
	having COUNT(RowNumber) > 1
) as o
		left join dwh.Ones as s on s.BuId = o.BuId
		and s.SiteEntityId = o.SiteEntityId
		and s.DepartmentEntityId = o.DepartmentEntityId
		and s.DisciplineId = o.DisciplineId
		and s.ShowId = o.ShowId
		and s.ArtistId = o.ArtistId
		and s.IsPotential = o.IsPotential
		and (s.ShotTeamId = o.ShotTeamId
			OR (s.ShotTeamId IS NULL and o.ShotTeamId IS NULL))
		and s.Period = o.Period
		and (s.DayOfPeriod = o.DayOfPeriod
			OR (s.DayOfPeriod IS NULL and o.DayOfPeriod IS NULL))
		and s.RowNumber = o.RowNumber
		and s.ExtractDataType = 'S'
		and s.Scenario = 0
		and s.StatusId != 5
	left join dwh.Ones as d on d.OnesRefId = s.OneId