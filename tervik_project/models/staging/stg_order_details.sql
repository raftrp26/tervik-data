with src as (
  select *
  from {{ source('data_tervik', 'order_details') }}
)
select 
  *
  ,current_timestamp() as ingestion_timestamp 
from src
