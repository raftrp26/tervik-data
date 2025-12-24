with src as (
  select *
  from {{ source('data_tervik', 'suppliers') }}
)
select 
  *
  ,current_timestamp() as ingestion_timestamp 
from src
