/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DML (Data Manipulation Language)
 *
 * INNER JOIN
 *
 * https://launchschool.com/exercises/baacf2b9?track=javascript
 */
-- @block
-- @conn workshop
-- @label view devices and all their part numbers
SELECT
  d.name,
  p.part_number
FROM
  devices d
  JOIN parts p ON d.id = p.device_id
;
