with src as (
  select *
  from {{ source('data_tervik', 'employee_privileges') }}
)
select 
  *
  ,current_timestamp() as ingestion_timestamp 
from src
