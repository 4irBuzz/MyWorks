SELECT 
    (SELECT name
    FROM person AS p 
    WHERE p.id = po.person_id) AS NAME,
	CASE
        WHEN (SELECT name FROM person AS p WHERE p.id = po.person_id) = 'Denis' THEN 'true'
        ELSE 'false'
    END AS check_name
FROM 
    person_order AS po
WHERE 
    po.menu_id IN (13, 14, 18) AND po.order_date = '2022-01-07';

