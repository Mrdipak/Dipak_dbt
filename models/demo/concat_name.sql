
{{
    config
    (
        materialized= 'table'
    )
}}
--select concat('John', 'Smith') as name

select {{ concat_macro('John','Smith') }} as name