SELECT students.name as student, avg(assignment_submissions.duration) as average_time
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average_time DESC