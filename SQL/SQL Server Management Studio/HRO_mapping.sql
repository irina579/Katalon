DECLARE @buId INT = 2
DECLARE @extractDefinitionName NVARCHAR(MAX) = 'HR Online'

SELECT ecm.ColumnMappingID,
    ecm.Ordering,
    ecm.ExtractFieldName,
    ecm.ImportTableFieldName,
    ecm.DataType
FROM dbo.ExtractColumnMappings ecm
JOIN dbo.ExtractDefinitionSheets eds ON ecm.ColumnMappingID = eds.ColumnMappingID
JOIN dbo.ExtractDefinitions ed ON eds.ExtractDefinitionID = ed.ExtractDefinitionID
WHERE ed.BuId = @buId
AND ed.ExtractDefinitionName = @extractDefinitionName