/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DML (Data Manipulation Language)
 *
 * UPDATE device_id
 *
 * https://launchschool.com/exercises/96b283fd?track=javascript
 */
-- @block
-- @conn workshop
-- @label update parts
-- @label preview rows to be updated
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
      name = 'Gyroscope'
  )
ORDER BY
  id DESC
LIMIT
  2
;

-- @label update parts rows
UPDATE parts
SET
  device_id = (
    SELECT
      id
    FROM
      devices
    WHERE
      name = 'Accelerometer'
  )
WHERE
  id IN (
    SELECT
      id
    FROM
      parts
    WHERE
      device_id = (
        SELECT
          id
        FROM
          devices
        WHERE
          name = 'Gyroscope'
      )
    ORDER BY
      id DESC
    LIMIT
      2
  )
;

-- @label view all parts
SELECT
  *
FROM
  parts
;
