SELECT
	(SELECT name
	FROM person AS p
	WHERE p.id = pv.person_id) AS person_name,
	(SELECT name
	FROM pizzeria AS pi
	WHERE pi.id = pv.pizzeria_id) AS pizzeria_name
FROM (SELECT visit_date, person_id, pizzeria_id
	 FROM person_visits
	 WHERE visit_date BETWEEN '2022-01-07' AND '2022-01-09') AS pv
ORDER BY person_name ASC, pizzeria_name DESC;