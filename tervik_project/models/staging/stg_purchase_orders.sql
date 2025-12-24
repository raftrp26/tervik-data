with src as (
  select *
  from {{ source('data_tervik', 'purchase_orders') }}
)
select 
  *
  ,current_timestamp() as ingestion_timestamp 
from src
