with source as (

    select * from {{ source('DL_northwind','order_details_status')}}
)
select *,
        current_timestamp() as ingestion_timestamp

from source
