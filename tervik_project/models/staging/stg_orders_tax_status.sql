with src as (
  select *
  from {{ source('data_tervik', 'orders_tax_status') }}
)
select 
  *
  ,current_timestamp() as ingestion_timestamp 
from src
