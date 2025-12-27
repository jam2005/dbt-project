select
    *
from
    {{ref('fcts_order')}}
where
    item_discount_amount > 0