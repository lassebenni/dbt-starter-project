SELECT
    id AS payment_id,
    orderid AS order_id,
    paymentmethod AS payment_method,
    status,
    -- amount is stored in cents, convert it to dollars
    created AS created_at,
    amount / 100 AS amount
FROM
    stripe_payments
