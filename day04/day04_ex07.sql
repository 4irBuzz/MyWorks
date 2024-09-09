INSERT INTO person_visits(id, person_id,
	pizzeria_id, visit_date)
VALUES ((SELECT max(id) + 1 FROM person_visits),
	(SELECT id FROM person WHERE name = 'Dmitriy'),
	(SELECT pizzeria.id FROM pizzeria
	INNER JOIN menu m ON m.pizzeria_id = pizzeria.id
	WHERE m.price < 800 AND pizzeria.name != 'Papa Johns'
	LIMIT 1),
	'2022-01-08');

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;