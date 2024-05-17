/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DDL (Data Definition Language)
 *
 * Check Values in List
 *
 * https://launchschool.com/exercises/03add4d4?track=javascript
 */
-- @block
-- @conn extrasolar
-- @label alter stars table
-- @label reset -- drop constraint
ALTER TABLE stars
DROP CONSTRAINT IF EXISTS stars_spectral_type_check
;

-- @label alter stars.spectral_type
ALTER TABLE stars
ALTER spectral_type
SET NOT NULL,
ADD CHECK (regexp_like ('OBAFGKM', spectral_type))
;
