SET enable_seqscan =off;
EXPLAIN ANALYZE
SELECT m.pizza_name, pz.name AS pizzeria_name
FROM menu AS m
INNER JOIN pizzeria pz ON pz.id = m.pizzeria_id;