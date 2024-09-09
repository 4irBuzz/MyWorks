SELECT pizza_name, price, pz.name AS pizzeria_name
FROM (SELECT id AS menu_id
	FROM menu
	EXCEPT
	SELECT menu_id
	FROM person_order) AS m1
INNER JOIN menu m ON m1.menu_id = m.id
INNER JOIN pizzeria pz ON pz.id = m.pizzeria_id
ORDER BY pizza_name, price;