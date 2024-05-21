/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Subqueries and More
 *
 * Row Comparison
 *
 * https://launchschool.com/exercises/22931033?track=javascript
 */
-- @block
-- @conn auction
-- @label view item.id matching provided values
SELECT
  id
FROM
  items
WHERE
  ROW (name, initial_price, sales_price) = ROW ('Painting', 100.00, 250.00)
;
