SELECT m.pizza_name, m.price, pz.name AS pizzeria_name, pv.visit_date
FROM menu AS m
INNER JOIN pizzeria pz
	ON pz.id = m.pizzeria_id
INNER JOIN person_visits pv
	ON pv.pizzeria_id = pz.id
WHERE pv.person_id = 3 AND m.price BETWEEN 800 AND 1000
ORDER BY pizza_name, price, pizzeria_name;