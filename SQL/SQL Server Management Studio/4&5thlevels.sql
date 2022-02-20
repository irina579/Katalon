--select e.* , d.* from dbo.EntityRelations r
select e.Name, d.DisciplineName, e.EntityType from dbo.EntityRelations r
join dbo.Entities e on r.EntityId = e.EntityId
join dbo.EntityDisciplineMapping as m on m.EntityId=e.EntityId
join dbo.Disciplines as d on d.DisciplineId=m.DisciplineId
where ParentEntityId = 2
and e.EntityType in (3,4)
and e.Deleted = 0
order by e.EntityType