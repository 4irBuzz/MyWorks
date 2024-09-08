SELECT name
FROM pizzeria
WHERE id NOT IN (SELECT pizzeria_id FROM person_visits);

SELECT pi.name
FROM pizzeria AS pi
WHERE NOT EXISTS (SELECT pv.pizzeria_id
	FROM person_visits AS pv
	WHERE pv.pizzeria_id = pi.id);