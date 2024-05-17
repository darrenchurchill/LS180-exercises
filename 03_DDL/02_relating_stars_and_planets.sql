/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DDL (Data Definition Language)
 *
 * Relating Stars and Planets
 *
 * https://launchschool.com/exercises/f7bbde72?track=javascript
 */
-- @block
-- @conn extrasolar
-- @label alter planets table
-- @label reset -- drop star_id from planets if exists
ALTER TABLE planets
DROP IF EXISTS star_id
;

-- @label add star_id to planets
ALTER TABLE planets
ADD star_id int NOT NULL REFERENCES stars (id)
;
