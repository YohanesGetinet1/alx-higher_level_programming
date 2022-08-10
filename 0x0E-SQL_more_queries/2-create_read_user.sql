-- query that creates the database hbtn_0d_2 and user_0d_2
-- 	user_0d_2 will have only SELECT privilege in the database
--	the query check if there is another hbtn_0d_2 database if not it create new nut if there is it will fail to create
--	the query check if there is any user name user_0d_2 if there there it will create else will create the user

CREATE DATABASE IF NOT EXISTS hbtn_0d_2;
CREATE USER IF NOT EXISTS user_0d_2@localhost IDENTIFIED BY 'user_0d_2_pwd';
GRANT SELECT ON hbtn_0d_2.* TO user_0d_2@localhost;
