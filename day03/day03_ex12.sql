INSERT INTO person_order(id,person_id,menu_id,order_date)
SELECT
d+(SELECT max(id) FROM person_order) AS id,
id as person_id,
(SELECT id FROM menu WHERE pizza_name = 'greek pizza') AS menu_id,
'2022-02-25' AS order_date
FROM person
INNER JOIN generate_series(1, (SELECT count(*) FROM person))
	AS d ON d = person.id;