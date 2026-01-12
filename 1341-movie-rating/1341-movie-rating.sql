(
    -- Query A: Find the User who rated the most movies
    SELECT name AS results
    FROM MovieRating mr
    JOIN Users u ON mr.user_id = u.user_id
    GROUP BY mr.user_id
    ORDER BY COUNT(*) DESC, name ASC -- Tie-breaker: Alphabetical name
    LIMIT 1
)
UNION ALL
(
    -- Query B: Find the Movie with highest avg rating in Feb 2020
    SELECT title AS results
    FROM MovieRating mr
    JOIN Movies m ON mr.movie_id = m.movie_id
    WHERE created_at LIKE '2020-02%' -- Easy date filter
    GROUP BY mr.movie_id
    ORDER BY AVG(rating) DESC, title ASC -- Tie-breaker: Alphabetical title
    LIMIT 1
);