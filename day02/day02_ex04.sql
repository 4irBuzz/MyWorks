SELECT
	pizza_name,
	(SELECT pz.name
	FROM pizzeria AS pz
	WHERE pz.id = m.pizzeria_id) AS pizzeria_name,
	price
FROM menu AS m
WHERE pizza_name = 'mushroom pizza'
	OR pizza_name = 'pepperoni pizza'
ORDER BY pizza_name, pizzeria_name;