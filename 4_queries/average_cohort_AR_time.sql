SELECT cohorts.name as cohort, avg(completed_at - started_at) as average_time
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohort
ORDER BY average_time;