{% snapshot orders_snapshot2 %}

{{
    config(
     unique_key = 'order_id',
     strategy= 'check',
     check_cols= ['status', 'shipped_date']
    )
}}

select order_id, customer_id, status, shipped_date from {{ source('raw', 'orders') }}

{% endsnapshot %}