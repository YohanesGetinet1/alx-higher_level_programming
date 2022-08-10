-- sql query that create the MySQL server user named user_0d_1
-- 	user_0d_1 has all privileges on the MySQL server
-- 	user_0d_1 password is set to user_od_1_pwd
-- 	the query check if there is a user name the same as we want to create user_0d_1 if not it create
CREATE USER IF NOT EXISTS user_0d_1@localhost IDENTIFIED BY 'user_0d_1_pwd';
GRANT ALL PRIVILEGE ON *.* TO user_0d_1@localhost;

