SELECT p.name
FROM menu AS m
INNER JOIN person_order po
	ON m.id = po.menu_id
INNER JOIN person p
	ON po.person_id = p.id
WHERE pizza_name = 'pepperoni pizza' AND p.gender = 'female'

INTERSECT
SELECT p.name
FROM menu AS m
INNER JOIN person_order po
	ON m.id = po.menu_id
INNER JOIN person p
	ON po.person_id = p.id
WHERE pizza_name = 'cheese pizza' AND p.gender = 'female'
ORDER BY name;