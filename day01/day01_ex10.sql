SELECT p.name AS person_name, pizza_name, pi.name AS pizzeria_name
FROM person_order AS po
JOIN person AS p ON po.person_id = p.id
JOIN menu ON po.menu_id = menu.id
JOIN pizzeria AS pi ON menu.pizzeria_id = pi.id
ORDER BY person_name, pizza_name, pizzeria_name;