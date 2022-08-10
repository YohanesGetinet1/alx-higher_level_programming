-- query that creates the table name force_name
-- 	which have the value of 
--		id INT
--		name VARCHAR(256) can't be null
-- the query check if there is tables named force_name before creating new 
CREATE TABLE IF NOT EXISTS force_name (id INT, name VARCHAR(256) NOT NULL);
