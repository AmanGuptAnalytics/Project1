with source as (

    select * from {{ source('DL_northwind','orders')}}
)
select *,
        current_timestamp() as ingestion_timestamp

from source
