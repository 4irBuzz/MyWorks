SELECT generated_date AS missing_date
FROM v_generated_dates AS vgd
WHERE generated_date NOT IN (
	SELECT visit_date FROM person_visits pv
	WHERE pv.visit_date = vgd.generated_date);