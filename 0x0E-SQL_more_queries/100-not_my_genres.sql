-- Import the database dump from hbtn_0d_tvshows
-- query that uses the hbtn_0d_tvshows database to list all genres not linked to the show Dexter

SELECT DISTINCT name
 	FROM tv_genres tg
 	JOIN tv_show_genres tsg
 	ON tg.id = tsg.genre_id WHERE
 	tsg.genre_id NOT IN
 	(SELECT tsg.genre_id
 		FROM tv_show_genres tsg
 		JOIN tv_shows ts
 		ON tsg.show_id = ts.id
 		WHERE title = 'Dexter')
 	ORDER BY name;
