-- Import the database hbtn_0d_tvshows_rate dump to your MySQL server:
-- query that lists all shows from hbtn_0d_tvshows_rate by their rating

SELECT ts.title, SUM(tsr.rate) AS rating
	FROM tv_shows ts
	JOIN tv_show_ratings tsr
	ON ts.id = tsr.show_id
	GROUP BY tsr.show_id
	ORDER BY rating DESC;
