SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name 
ORDER BY total_submissions DESC;