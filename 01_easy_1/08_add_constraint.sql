/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Easy 1
 *
 * Add Constraint
 *
 * https://launchschool.com/exercises/d176489a?track=javascript
 */
-- @block
-- @conn animals
-- @label add constraint to birds table
ALTER TABLE birds
ADD CHECK (age > 0)
;

-- @block
-- @conn animals
-- @label test constraint
INSERT INTO
  birds (id, name, age, species)
VALUES
  (1, 'Charlie', -1, 'Finch')
;
