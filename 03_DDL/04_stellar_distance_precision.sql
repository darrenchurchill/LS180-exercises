/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DDL (Data Definition Language)
 *
 * Stellar Distance Precision
 *
 * https://launchschool.com/exercises/bd3c128d?track=javascript
 */
-- @block
-- @conn extrasolar
-- @label alter stars.distance precision
ALTER TABLE stars
ALTER distance TYPE decimal
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
ALTER distance TYPE int
;

-- @label insert data
INSERT INTO
  stars (name, distance, spectral_type, companions)
VALUES
  ('Alpha Orionis', 643, 'M', 9)
;

-- @label increase stars.name length
ALTER TABLE stars
ALTER distance type decimal
;
