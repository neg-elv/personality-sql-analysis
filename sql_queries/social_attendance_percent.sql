SELECT 
	personality,
    TRUNCATE(COUNT(*) * 100 / SUM(COUNT(*)) OVER (PARTITION BY Personality), 2) AS percentage,
    social_event_attendance
FROM personality_dataset
GROUP BY personality, social_event_attendance
ORDER BY percentage DESC;