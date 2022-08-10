-- query that lists all cities contained in the database hbtn_0d_usa
-- record will display: cities.id - cities.name - states.name
-- Results will be sorted in ascending order by cities.id
SELECT c.id, c.name, s.name FROM cities c JOIN states s ON c.state_id = s.id ORDER BY c.id;
