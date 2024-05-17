/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DDL (Data Definition Language)
 *
 * Increase Star Name Length
 *
 * https://launchschool.com/exercises/abf168f0?track=javascript
 */
-- @block
-- @conn extrasolar
-- @label alter stars.name length
ALTER TABLE stars
ALTER name TYPE varchar(50)
;

/*
Further Exploration

What will happen if you try to alter the column when there's already data in the
table?

Answer -- the data in the altered column will be cast to the new type, if
possible; otherwise, the statement will return an error.
*/
-- @label reset stars.name
ALTER TABLE stars
ALTER name TYPE varchar(25)
;

-- @label insert data
INSERT INTO
  stars (name, distance, spectral_type, companions)
VALUES
  ('Alpha Centauri B', 4, 'K', 3)
;

-- @label increase stars.name length
ALTER TABLE stars
ALTER name TYPE varchar(50)
;
