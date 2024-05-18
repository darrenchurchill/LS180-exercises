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
ADD CHECK (
  spectral_type IN ('O', 'B', 'A', 'F', 'G', 'K', 'M')
)
;

/*
Further Exploration

What will happen if you try to alter the table column when it contains illegal
`spectral_type` data, either a NULL value or an invalid character?

Answer -- you won't be able to alter the column to add the new constraints until
you address the data that will violate the constraint.
*/
-- @label reset -- drop stars.spectral_type constraints
ALTER TABLE stars
DROP CONSTRAINT stars_spectral_type_check,
ALTER COLUMN spectral_type
DROP NOT NULL
;

-- @label insert NULL data
INSERT INTO
  stars (name, distance, companions)
VALUES
  ('Epsilon Eridani', 10.5, 0)
;

-- @label insert invalid data
INSERT INTO
  stars (name, distance, spectral_type, companions)
VALUES
  ('Lacaille 9352', 10.68, 'X', 0)
;

-- @label fix invalid rows
UPDATE stars
SET
  spectral_type = 'O'
WHERE
  name = 'Epsilon Eridani'
  OR name = 'Lacaille 9352'
;

-- @label re-add stars.spectral_type constraints
ALTER TABLE stars
ADD CHECK (
  spectral_type IN ('O', 'B', 'A', 'F', 'G', 'K', 'M')
),
ALTER COLUMN spectral_type
SET NOT NULL
;
