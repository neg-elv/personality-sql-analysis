SELECT 
	personality,
    going_outside,
	CASE
		WHEN going_outside >= 6  THEN 'Highly Social'
		WHEN going_outside BETWEEN 3 AND 5 THEN 'Moderate'
		ELSE 'introverted'
	END AS behavior_cluster
FROM personality_dataset
GROUP BY personality, going_outside
ORDER BY going_outside DESC;