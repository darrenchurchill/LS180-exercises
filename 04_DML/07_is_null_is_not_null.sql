/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DML (Data Manipulation Language)
 *
 * IS NULL and IS NOT NULL
 *
 * https://launchschool.com/exercises/b543bbc5?track=javascript
 */
-- @block
-- @conn workshop
-- @label view parts
-- @label parts belonging to a device
SELECT
  part_number,
  device_id
FROM
  parts
WHERE
  device_id IS NOT NULL
;

-- @label parts not belonging to a device
SELECT
  part_number,
  device_id
FROM
  parts
WHERE
  device_id IS NULL
;
