/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DML (Data Manipulation Language)
 *
 * Oldest Device
 *
 * https://launchschool.com/exercises/d929a644?track=javascript
 */
-- @block
-- @conn workshop
-- @label insert another device
INSERT INTO
  devices (name)
VALUES
  ('Magnetometer')
;

-- @label insert another part
INSERT INTO
  parts (part_number, device_id)
VALUES
  (42, 4)
;

-- @label view oldest device
SELECT
  name oldest_device
FROM
  devices
ORDER BY
  created_at
LIMIT
  1
;
