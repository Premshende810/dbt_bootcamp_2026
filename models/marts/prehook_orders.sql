{{
    config(
        materialized='table',
        pre_hook=[ "Create or replace temporary table db.demo_sch.temp_orders as select * from db.raw_schema.orders"]
    )
}}

with cte as (

    select * from db.demo_sch.temp_orders
)
select * from cte