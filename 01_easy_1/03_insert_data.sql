/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Easy 1
 *
 * Insert Data
 *
 * https://launchschool.com/exercises/b06c9ec4?track=javascript
 */
-- @block
-- @conn animals
-- @label insert birds data
-- @label reset -- delete all rows
DELETE FROM birds
;

-- @label insert data
INSERT INTO
  birds (id, name, age, species)
VALUES
  (1, 'Charlie', 3, 'Finch'),
  (2, 'Allie', 5, 'Owl'),
  (3, 'Jennifer', 3, 'Magpie'),
  (4, 'Jamie', 4, 'Owl'),
  (5, 'Roy', 8, 'Crow')
;

-- @label view all birds
SELECT
  *
FROM
  birds
;
