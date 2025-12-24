with src as (
  select *
  from {{ source('data_tervik', 'purchase_order_status') }}
)
select 
  *
  ,current_timestamp() as ingestion_timestamp 
from src
