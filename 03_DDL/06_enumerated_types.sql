/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DDL (Data Definition Language)
 *
 * Enumerated Types
 *
 * https://launchschool.com/exercises/1e4b0da3?track=javascript
 */
-- @block
-- @conn extrasolar
-- @label alter stars table
-- @label drop check constraint
ALTER TABLE stars
DROP CONSTRAINT IF EXISTS stars_spectral_type_check
;

-- @label create enum_spectral_type ENUM
CREATE TYPE enum_spectral_type AS enum('O', 'B', 'A', 'F', 'G', 'K', 'M')
;

-- @label alter stars.spectral_type
ALTER TABLE stars
ALTER spectral_type TYPE enum_spectral_type USING spectral_type::enum_spectral_type
;
