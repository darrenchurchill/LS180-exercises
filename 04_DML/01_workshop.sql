/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DML (Data Manipulation Language)
 *
 * Set Up Database
 *
 * https://launchschool.com/exercises/f3a523f5?track=javascript
 */
-- @block
-- @conn workshop
-- @label create tables
-- @label reset -- drop tables if exists
DROP TABLE IF EXISTS devices,
parts
;

-- @label create devices table
CREATE TABLE devices (
  id serial PRIMARY KEY,
  name text NOT NULL,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP
)
;

-- @label create parts table
CREATE TABLE parts (
  id serial PRIMARY KEY,
  part_number int UNIQUE NOT NULL,
  device_id int REFERENCES devices (id)
)
;
