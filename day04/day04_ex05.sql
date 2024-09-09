CREATE VIEW v_price_with_discount AS
SELECT p.name, m.pizza_name, m.price,
	ROUND(m.price - m.price*0.1) AS discount_price
FROM menu AS m
INNER JOIN person_order po ON po.menu_id = m.id
INNER JOIN person p ON p.id = po.person_id
ORDER BY name, pizza_name;