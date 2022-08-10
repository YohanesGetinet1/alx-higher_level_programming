-- Import the database hbtn_0d_tvshows_rate dump to your MySQL server:
-- query that lists all shows from hbtn_0d_tvshows_rate by their rating
SELECT name, SUM(rate) AS rating
	FROM tv_genres tg
	JOIN tv_show_genres tsg
	ON tg.id = tsg.genre_i
	JOIN tv_show_ratings tsr
	ON tsg.show_id = tsr.show_id
	GROUP BY name
	ORDER BY rating DESC;
