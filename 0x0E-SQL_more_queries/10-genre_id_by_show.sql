-- Import the database dump from hbtn_0d_tvshows
-- query that lists all shows contained in hbtn_0d_tvshows that have at least one genre linked

SELECT ts.title, tsg.genre_id FROM tv_shows ts JOIN tv_show_genres tsg ON ts.id = tsg.show_id ORDER BY ts.title, tsg.genre_id;
