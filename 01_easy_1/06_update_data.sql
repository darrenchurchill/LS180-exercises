/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Easy 1
 *
 * Update Data
 *
 * https://launchschool.com/exercises/3b5163ba?track=javascript
 */
-- @block
-- @conn animals
-- @label update birds data
-- @label change Crow to Raven
UPDATE birds
SET
  species = 'Raven'
WHERE
  species = 'Crow'
;

-- @label change Jamie to Hawk
UPDATE birds
SET
  species = 'Hawk'
WHERE
  name = 'Jamie'
;

-- @label view all birds
SELECT
  *
FROM
  birds
;
