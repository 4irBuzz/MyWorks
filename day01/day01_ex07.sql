SELECT po.order_date AS action_date,
	CONCAT(p.name, ' (age:', age, ')') AS person_information
FROM person_order AS po
INNER JOIN person_visits AS pv ON po.order_date = pv.visit_date
AND po.person_id = pv.person_id
INNER JOIN person AS p ON po.person_id = p.id
ORDER BY order_date, name;