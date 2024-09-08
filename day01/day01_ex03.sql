SELECT DISTINCT po.order_date AS action_date, po.person_id
FROM person_order AS po
INNER JOIN person_visits AS pv ON po.order_date = pv.visit_date
AND po.person_id = pv.person_id
ORDER BY action_date, person_id DESC;