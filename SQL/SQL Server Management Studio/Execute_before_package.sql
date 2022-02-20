IF NOT EXISTS

(

SELECT *

FROM INFORMATION_SCHEMA.COLUMNS

WHERE TABLE_SCHEMA = 'dwh' AND

TABLE_NAME = 'FinanceSnapshotQueueOneIds' AND

COLUMN_NAME = 'Id'

)

ALTER TABLE dwh.FinanceSnapshotQueueOneIds

ADD Id INT IDENTITY(1,1) NOT NULL





EXEC [Service].AlterTableConstraint

@schema_name = 'dwh',

@table_name = 'FinanceSnapshotQueueOneIds',

@column_name = 'Id',

@constraint_action = 'ADD',

@constraint_name = 'pk_dwh_FinanceSnapshotQueueOneIds_Id',

@constraint_type = 'pk'

GO