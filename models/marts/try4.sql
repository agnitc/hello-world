with payments as (
    select * from {{ ref('payments')}}
),

pivoted as (
    select
    orderid,
    {% set paymentmethods = ['bank_transfer', 'credit_card', 'coupon', 'gift_card'] %}
    {% for pmtMethod in paymentmethods%}
        sum(case when paymentmethod = '{{ pmtMethod }}' then amount else 0 end) as {{ pmtMethod }}_amount {% if not loop.last %}, {% endif %}
    {% endfor %} 
    from payments
    group by 1
)

select * from pivoted