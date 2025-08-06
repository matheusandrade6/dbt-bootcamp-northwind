with sources as (
    select * from {{ source('northwind', 'orders') }}
)

select 
    order_id,
    order_date,
    status,
    amount,
    country_code
from
    sources