/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Easy 1
 *
 * Create a Table
 *
 * https://launchschool.com/exercises/2ac78074?track=javascript
 */
-- @block
-- @conn animals
-- @label setup birds table
-- @label reset -- drop table if exists
DROP TABLE IF EXISTS birds
;

-- @label create birds table
CREATE TABLE birds (id serial PRIMARY KEY, name varchar(25), age int, species varchar(15))
;
