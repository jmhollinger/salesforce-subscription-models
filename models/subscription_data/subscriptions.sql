SELECT
    subscription_id,
    product_id,
    created_at
FROM
    {{ source('subscription_data', 'subscriptions') }}
