SELECT
    subscription_id,
    product_id as old_product_id,
    new_product_id,
    happened_at
FROM
    {{ source('subscription_data', 'subscription_change_log') }}