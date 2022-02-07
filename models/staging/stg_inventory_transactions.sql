with source as (

    select * from {{ source('DL_northwind','inventory_transactions')}}
)
select *,
        current_timestamp() as ingestion_timestamp

from source
