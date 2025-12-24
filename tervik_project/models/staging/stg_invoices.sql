with src as (
  select *
  from {{ source('data_tervik', 'invoices') }}
)
select 
  *
  ,current_timestamp() as ingestion_timestamp 
from src
