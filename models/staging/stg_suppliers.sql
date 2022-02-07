with source as (

    select * from {{ source('DL_northwind','suppliers')}}
)
select *,
        current_timestamp() as ingestion_timestamp

from source