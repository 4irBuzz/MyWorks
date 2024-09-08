SELECT m.pizza_name, pz.name AS pizzeria_name
FROM menu AS m
INNER JOIN pizzeria AS pz ON
	m.pizzeria_id = pz.id
INNER JOIN person_order AS po
	ON m.id = po.menu_id
WHERE po.person_id IN (
	SELECT id
	FROM person AS p
	WHERE p.name = 'Denis' OR p.name = 'Anna')
ORDER BY m.pizza_name, pizzeria_name;