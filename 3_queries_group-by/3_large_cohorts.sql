SELECT cohorts.name as cohort_name, count(students) as student_count 
FROM cohorts
JOIN students ON cohort_id = cohorts.id
GROUP BY cohorts.name 
HAVING count(students) >= 18
ORDER BY student_count;

-- ^ Solution

/* 
SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;

Toggled Solution ^ 


*/ 






