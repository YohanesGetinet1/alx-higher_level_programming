-- Import the database dump from hbtn_0d_tvshows
-- query that lists all shows contained in hbtn_0d_tvshows without a genre linked

SELECT ts.title, tsg.genre_id FROM tv_shows ts LEFT JOIN tv_show_genres tsg ON ts.id = tsg.show_id WHERE genre_id IS NULL ORDER BY ts.title, tsg.genre_id;
