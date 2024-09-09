SELECT m.pizza_name, pz2.name AS pizzeria_name_1,
	pz1.name AS pizzeria_name_2, m.price
FROM menu AS m
INNER JOIN menu m1 ON m1.price = m.price AND m1.id != m.id
INNER JOIN pizzeria pz1 ON pz1.id = m.pizzeria_id
INNER JOIN pizzeria pz2 ON pz2.id = m1.pizzeria_id
WHERE pz1.id < pz2.id AND m1.pizza_name = m.pizza_name
ORDER BY pizza_name;