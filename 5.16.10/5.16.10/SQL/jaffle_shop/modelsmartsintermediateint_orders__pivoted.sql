with payments as (
    select * from analytics.DBT_GGITHIRI.stg_payments
),

final as (
    select
        order_id, -- orde
            sum(
                case
                    when payment_method = 'bank_transfer' then amount
                    else 0
                end
            ) as bank_transfer_a,
            sum(
                case
                    when payment_method = 'credit_card' then amount
                    else 0
                end
            ) as credit_card_a,
            sum(
                case
                    when payment_method = 'coupon' then amount
                    else 0
                end
            ) as coupon_a,
            sum(
                case
                    when payment_method = 'gift_card' then amount
                    else 0
                end
            ) as gift_card_a
    from payments
    group by 1
)

select * from final