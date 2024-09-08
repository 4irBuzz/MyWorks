SELECT p.name
FROM menu AS m
INNER JOIN person_order po
	ON m.id = po.menu_id
INNER JOIN person p
	ON po.person_id = p.id
WHERE pizza_name IN ('pepperoni pizza', 'mushroom pizza')
	AND p.gender = 'male' AND p.address IN ('Moscow', 'Samara')
ORDER BY p.name DESC;