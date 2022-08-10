-- the query  that creates the database hbtn_0d_usa and the table cities in the current db.
-- table contains
-- 		     id INT unique, auto generated, is not null and is a primary key
--		     state_id INT, is not null and is a FOREIGN KEY that references to id of the states table
--		     name VARCHAR(256) is not null

CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;
CREATE TABLE IF NOT EXISTS hbtn_0d_usa.cities(id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY, state_id INT NOT NULL, FOREIGN KEY(state_id) REFERENCES states(id), name VARCHAR(256) NOT NULL);
