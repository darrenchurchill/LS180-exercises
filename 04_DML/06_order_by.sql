/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DML (Data Manipulation Language)
 *
 * ORDER BY
 *
 * https://launchschool.com/exercises/315eca72?track=javascript
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
ORDER BY
  d.name DESC
;
