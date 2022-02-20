UPDATE ass
SET
    ass.ExpiryDate = @testDate
FROM Performance.ArtistSkillScores ass
 JOIN Performance.ArtistInfos ai ON ass.ArtistInfoId = ai.Id
 JOIN dbo.ArtistDepartmentDiscipline [add] ON ai.Id = [add].ArtistDepartmentDisciplineId
 JOIN dwh.Artist a ON [add].ArtistId = a.ArtistId
WHERE a.GlobalID = @userGlobalId
 AND ass.IsActual = 1