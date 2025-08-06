with sources as (
    select * from {{ source('northwind', 'customers') }}
)

select 
    id as customer_id,
    name,
    email
from
    sources
