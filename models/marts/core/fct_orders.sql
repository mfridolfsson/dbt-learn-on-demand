select orders.order_id,
       orders.customer_id,
       payments.amount
from {{ ref('stg_payments') }} payments
inner join {{ ref('stg_orders') }} orders on orders.order_id = payments.order_id