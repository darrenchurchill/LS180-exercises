/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DML (Data Manipulation Language)
 *
 * Insert Data for Parts and Devices
 *
 * https://launchschool.com/exercises/b5ee301a?track=javascript
 */
-- @block
-- @conn workshop
-- @label reset
-- @label reset -- delete from parts
DELETE FROM parts
;

-- @label reset -- delete from devices
DELETE FROM devices
;

-- @label reset devices PK sequence
ALTER SEQUENCE devices_id_seq restart
;

-- @block
-- @conn workshop
-- @label insert data
-- @label insert into devices
INSERT INTO
  devices (name)
VALUES
  ('Accelerometer'),
  ('Gyroscope'),
  ('IMU')
;

-- @label insert into parts
INSERT INTO
  parts (part_number, device_id)
VALUES
  (1, 1),
  (2, 1),
  (3, 1),
  (4, 2),
  (5, 2),
  (6, 2),
  (7, 2),
  (8, 2),
  (9, NULL),
  (10, NULL),
  (11, NULL)
;

-- @label view all parts w/ device names
SELECT
  p.*,
  d.name device_name
FROM
  parts p
  LEFT OUTER JOIN devices d ON p.device_id = d.id
;
