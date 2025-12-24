with src as (
  select *
  from {{ source('data_tervik', 'inventory_transactions') }}
)
select 
  *
  ,current_timestamp() as ingestion_timestamp 
from src
