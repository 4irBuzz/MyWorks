CREATE INDEX idx_person_name
ON person(name);

SET enable_seqscan =off;
EXPLAIN ANALYZE
SELECT p.name AS person_name, pv.visit_date
FROM person AS p
INNER JOIN person_visits pv ON pv.person_id = p.id
WHERE p.name = 'Denis';