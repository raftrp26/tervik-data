with src as (
  select *
  from {{ source('data_tervik', 'inventory_transaction_types') }}
)
select 
  *
  ,current_timestamp() as ingestion_timestamp 
from src
