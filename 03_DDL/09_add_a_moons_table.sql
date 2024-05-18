/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * DDL (Data Definition Language)
 *
 * Add a Moons Table
 *
 * https://launchschool.com/exercises/083fe4bf?track=javascript
 */
-- @block
-- @conn extrasolar
-- @label add moons table
CREATE TABLE moons (
  id serial PRIMARY KEY,
  designation int NOT NULL CHECK (designation > 0),
  semi_major_axis decimal CHECK (semi_major_axis > 0),
  mass decimal CHECK (mass > 0),
  planet_id int NOT NULL REFERENCES planets (id)
)
;
