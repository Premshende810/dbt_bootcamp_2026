{{
    config(
        materialized='table',
        post_hook = ["insert into db.raw_schema.model_logs(model_name, status, run_at) values ('m1', 'COMPLETED', current_timestamp())"]
    )
}}

select * from {{ source('raw', 'orders') }}