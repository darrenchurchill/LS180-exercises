/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Subqueries and More
 *
 * Conditional Subqueries: NOT IN
 *
 * https://launchschool.com/exercises/0f4f7dac?track=javascript
 */
-- @block
-- @conn auction
-- @label view all items with no bids
SELECT
  name "Not Bid On"
FROM
  items
WHERE
  id NOT IN (
    SELECT
      item_id
    FROM
      bids
  )
;
