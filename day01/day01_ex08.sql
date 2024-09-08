SELECT po.order_date AS action_date,
	CONCAT(name, ' (age:', age, ')') AS person_information
FROM person_order AS po
NATURAL JOIN (SELECT id AS person_id, name, age FROM person)
ORDER BY order_date, name;