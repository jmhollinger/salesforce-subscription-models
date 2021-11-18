/* All current subscription records */
SELECT DISTINCT
	s.subscription_id,
	s.product_id,
	s.created_at as happened_at
FROM 
	{{ref('subscriptions')}} s

UNION ALL

/* All change log records where the new product_id does not equal the old*/
SELECT DISTINCT
	scl.subscription_id,
	scl.new_product_id,
	scl.happened_at
FROM 
	{{ref('subscription_change_log')}} scl
WHERE 
    scl.old_product_id <> scl.new_product_id