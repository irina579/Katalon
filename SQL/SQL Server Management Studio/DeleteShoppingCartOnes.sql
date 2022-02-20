DECLARE @LastMonday DATE = (SELECT CAST(DATEADD(day, -1*(DATEPART(WEEKDAY, GETDATE())-2), GETDATE()) as DATE))
            DECLARE @DirectId CHAR(2) = 'D'
            SELECT s.BuId,s.ShowCode, D.DisciplineName, AL.CareerLevel, Count(o.Ones) as Count_Ones
            FROM dwh.Artist AS A
            JOIN dwh.Ones AS O ON O.ArtistId = A.ArtistId
            JOIN dwh.Show AS S ON O.ShowId = s.ShowId
            JOIN dbo.Disciplines AS D ON D.DisciplineId = O.DisciplineId
            JOIN ref.ArtistLevel AS AL ON A.LevelId = AL.Id
            WHERE a.Virtual = 1 AND A.GlobalID IS NULL AND O.LabourTypeId = @DirectId AND o.Period < @LastMonday
            GROUP BY s.BuId, s.ShowCode, D.DisciplineName, AL.CareerLevel
            ORDER BY s.BUid, s.ShowCode, D.DisciplineName, AL.CareerLevel