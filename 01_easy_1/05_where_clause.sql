/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Easy 1
 *
 * WHERE clause
 *
 * https://launchschool.com/exercises/f7ff3f4e?track=javascript
 */
-- @block
-- @conn animals
-- @label view birds under age 5
SELECT
  *
FROM
  birds
WHERE
  age < 5
;
