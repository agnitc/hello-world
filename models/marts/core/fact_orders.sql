with orders as (
    select * from {{ ref('orders')}}
),

payments as (
    select * from {{ ref('payments')}}
),

fct_orders as (
    select o.id as orderid,
            payment_id,
            amount
    from orders o
    left join payments p on o.id = p.orderid  
)

select * from fct_orders