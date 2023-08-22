SELECT cohorts.name, 
AVG(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_time 
FROM students
JOIN assistance_requests ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time;


/* 

Correct Answer, using assistance_requests with FROM 

note JOIN students (assistance_requests.student_id)

SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;


*/