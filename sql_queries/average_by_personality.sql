SELECT 
	personality,
    TRUNCATE(AVG(time_spent_alone), 2) AS avg_time_alone,
    TRUNCATE(AVG(friends_circle_size), 2) AS avg_friends,
    TRUNCATE(AVG(post_frequency), 2) AS avg_post_frequency
FROM personality_dataset
GROUP BY personality;
