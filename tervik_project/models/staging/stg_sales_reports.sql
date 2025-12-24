with src as (
  select *
  from {{ source('data_tervik', 'sales_reports') }}
)
select 
  *
  ,current_timestamp() as ingestion_timestamp 
from src
