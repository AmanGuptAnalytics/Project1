with source as (

    select * from {{ source('DL_northwind','privileges')}}
)
select *,
        current_timestamp() as ingestion_timestamp

from source
