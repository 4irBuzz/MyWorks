SELECT pz.name AS pizzeria_name
FROM person_visits AS pv
INNER JOIN pizzeria pz ON pz.id = pv.pizzeria_id
INNER JOIN person p ON p.id = pv.person_id
WHERE p.name = 'Andrey'

EXCEPT
SELECT pz.name AS pizzeria_name
FROM person_order AS po
INNER JOIN menu m ON m.id = po.menu_id
INNER JOIN person p ON p.id = po.person_id
INNER JOIN pizzeria pz ON pz.id = m.pizzeria_id
WHERE p.name = 'Andrey'