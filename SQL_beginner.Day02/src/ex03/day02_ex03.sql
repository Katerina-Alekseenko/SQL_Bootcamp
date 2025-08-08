WITH vis_days AS 
	(SELECT visit_date
	 FROM person_visits
	WHERE person_id = 1 OR person_id = 2)
SELECT missing_date::date
FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') AS missing_date
LEFT JOIN vis_days ON missing_date = vis_days.visit_date
WHERE visit_date IS NULL
ORDER BY missing_date;