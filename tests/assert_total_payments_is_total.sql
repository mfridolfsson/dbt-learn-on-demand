select Order_id,
       sum(amount) as total_amount
from {{ref('stg_payments')}}
group by Order_id
having not(total_amount >= 0)