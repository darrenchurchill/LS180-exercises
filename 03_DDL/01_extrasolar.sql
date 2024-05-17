/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DDL (Data Definition Language)
 *
 * Create an Extrasolar Planetary Database
 *
 * https://launchschool.com/exercises/b0efff09?track=javascript
 */
-- @block
-- @conn extrasolar
-- @label create tables
-- @label reset -- drop tables if exists
DROP TABLE IF EXISTS stars,
planets
;

-- @label create stars table
CREATE TABLE stars (
  id serial PRIMARY KEY,
  name varchar(25) UNIQUE NOT NULL,
  distance int NOT NULL CHECK (distance > 0),
  spectral_type char(1),
  companions integer NOT NULL CHECK (companions >= 0)
)
;

-- @label create planets table
CREATE TABLE planets (
  id serial PRIMARY KEY,
  designation char(1) UNIQUE,
  mass int
)
;
