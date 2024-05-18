/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DDL (Data Definition Language)
 *
 * Planetary Mass Precision
 *
 * https://launchschool.com/exercises/ce029af5?track=javascript
 */
-- @block
-- @conn extrasolar
-- @label alter planets table
-- @label alter planets.mass type
ALTER TABLE planets
ALTER mass TYPE decimal,
ALTER mass
SET NOT NULL,
ADD CHECK (mass > 0),
ALTER designation
SET NOT NULL
;
