# Write your MySQL query statement below
SELECT results
FROM (
    SELECT IFNULL(u.name, '') AS results, COUNT(DISTINCT r.movie_id) AS num_movies
    FROM Users u
    LEFT JOIN MovieRating r ON u.user_id = r.user_id
    GROUP BY u.user_id
    ORDER BY num_movies DESC, u.name ASC
    LIMIT 1
) AS user_ratings
UNION ALL
SELECT results
FROM (
    SELECT IFNULL(m.title, '') AS results, AVG(r.rating) AS avg_rating
    FROM MovieRating r
    JOIN Movies m ON r.movie_id = m.movie_id
    WHERE YEAR(r.created_at) = 2020 AND MONTH(r.created_at) = 2
    GROUP BY r.movie_id
    ORDER BY avg_rating DESC, m.title ASC
    LIMIT 1
) AS movie_ratings;
