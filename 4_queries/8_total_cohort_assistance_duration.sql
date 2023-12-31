SELECT cohorts.name, 
SUM(assistance_requests.completed_at - assistance_requests.started_at) as total_duration 
FROM students
JOIN assistance_requests ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration;