-- the query create database named hbtn_0d_usa and
-- creates table named states 
-- table contains
--		id INT UNIQUE , AUTI GENERATED ,CAN'T BE NULL AND IS PRIMARY KEY
--		name VARCHAR(256) CANT'T BE NULL
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;
CREATE TABLE IF NOT EXISTS hbtn_0d_usa.states(id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY, name VARCHAR(256) NOT NULL);
