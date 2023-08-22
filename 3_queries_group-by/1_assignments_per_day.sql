-- I could say count(*) instead of count(assignments)

SELECT day, count(assignments) as total_assignments
FROM assignments
GROUP BY day
ORDER BY day;
