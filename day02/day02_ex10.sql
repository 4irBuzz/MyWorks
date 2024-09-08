SELECT p1.name AS person_name1, p2.name AS person_name2,
	p1.address AS common_address
FROM person AS p1
INNER JOIN person p2
	ON p1.address = p2.address
WHERE p1.name != p2.name AND p2.id < p1.id
ORDER BY person_name1, person_name2, common_address;