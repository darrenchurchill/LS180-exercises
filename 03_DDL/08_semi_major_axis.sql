/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DDL (Data Definition Language)
 *
 * Add a Semi-Major Axis Column
 *
 * https://launchschool.com/exercises/3560c6c8?track=javascript
 */
-- @block
-- @conn extrasolar
-- @label alter planets table
-- @label add planets.semi_major_axis
ALTER TABLE planets
ADD semi_major_axis numeric NOT NULL
;
