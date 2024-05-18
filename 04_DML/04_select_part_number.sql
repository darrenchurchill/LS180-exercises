/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DML (Data Manipulation Language)
 *
 * SELECT part number
 *
 * https://launchschool.com/exercises/b7e9a1e9?track=javascript
 */
-- @block
-- @conn workshop
-- @label view part numbers starting with 3
SELECT
  *
FROM
  parts
WHERE
  starts_with(part_number::text, '3')
;
