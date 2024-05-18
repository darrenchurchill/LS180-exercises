/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DML (Data Manipulation Language)
 *
 * Aggregate Functions
 *
 * https://launchschool.com/exercises/d6c0b76d?track=javascript
 */
-- @block
-- @conn workshop
-- @label devices and count of parts
SELECT
  d.name device_name,
  count(p.id) part_count
FROM
  devices d
  LEFT OUTER JOIN parts p ON d.id = p.device_id
GROUP BY
  d.name
;
