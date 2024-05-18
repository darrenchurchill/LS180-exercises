/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DML (Data Manipulation Language)
 *
 * Delete Accelerometer
 *
 * https://launchschool.com/exercises/aafd69e9?track=javascript
 */
-- @block
-- @conn workshop
-- @label delete from parts and devices
-- @label preview parts rows to be deleted
SELECT
  *
FROM
  parts
WHERE
  device_id = (
    SELECT
      id
    FROM
      devices
    WHERE
      name = 'Accelerometer'
  )
;

-- @label preview devices rows to be deleted
SELECT
  *
FROM
  devices
WHERE
  name = 'Accelerometer'
;

-- @label delete parts rows
DELETE FROM parts
WHERE
  device_id = (
    SELECT
      id
    FROM
      devices
    WHERE
      name = 'Accelerometer'
  )
;

-- @label delete from devices
DELETE FROM devices
WHERE
  name = 'Accelerometer'
;
