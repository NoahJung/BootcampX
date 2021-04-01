SELECT count(assistance_requests.*) as total_AR, teachers.name as teacher
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;