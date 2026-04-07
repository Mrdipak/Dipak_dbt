
{{
    config
    (
        materialized = 'table'
    )
}}

with customer_src as
(

select
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    PHONE,
    COUNTRY,
    CREATED_AT,
    current_timestamp as INSERTED_DT
    FROM {{source('customer', 'CUSTOMER_SRC')}}
)
select * from customer_src