/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Subqueries and More
 *
 * Conditional Subqueries: IN
 *
 * https://launchschool.com/exercises/27c2fd91?track=javascript
 */
-- @block
-- @conn auction
-- @label view all items with bids
SELECT
  name "Bid on Items"
FROM
  items
WHERE
  id IN (
    SELECT
      item_id
    FROM
      bids
  )
;
