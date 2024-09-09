(SELECT pz.name AS pizzeria_name
	FROM person AS p
	INNER JOIN person_visits pv	ON p.id = pv.person_id
	INNER JOIN pizzeria pz ON pz.id = pv.pizzeria_id
	WHERE p.gender = 'female'
EXCEPT ALL
SELECT pz.name
	FROM person AS p
	INNER JOIN person_visits pv	ON p.id = pv.person_id
	INNER JOIN pizzeria pz ON pz.id = pv.pizzeria_id
	WHERE p.gender = 'male')
UNION ALL
(SELECT pz.name
	FROM person AS p
	INNER JOIN person_visits pv	ON pv.person_id = p.id
	INNER JOIN pizzeria pz ON pz.id = pv.pizzeria_id
	WHERE p.gender = 'male'
EXCEPT ALL
SELECT pz.name
	FROM person AS p
	INNER JOIN person_visits pv	ON pv.person_id = p.id
	INNER JOIN pizzeria pz ON pz.id = pv.pizzeria_id
	WHERE p.gender = 'female')
ORDER BY pizzeria_name;