SELECT pz.name AS pizzeria_name
FROM menu AS m
INNER JOIN pizzeria pz
	ON pz.id = m.pizzeria_id
INNER JOIN person_visits pv
	ON m.pizzeria_id = pv.pizzeria_id
INNER JOIN person p
	ON p.id = pv.person_id
WHERE p.name = 'Dmitriy'
AND price < 800 AND visit_date = '2022-01-08';