/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Easy 1
 *
 * Delete Data
 *
 * https://launchschool.com/exercises/722ac41c?track=javascript
 */
-- @block
-- @conn animals
-- @label delete data from birds
-- @label preview data
SELECT
  *
FROM
  birds
WHERE
  age = 3
  AND species = 'Finch'
;

-- @label remove 3 yr old Finch
DELETE FROM birds
WHERE
  age = 3
  AND species = 'Finch'
;

-- @label view all birds
SELECT
  *
FROM
  birds
;
