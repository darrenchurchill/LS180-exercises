/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Subqueries and More
 *
 * Conditional Subqueries: EXISTS
 *
 * https://launchschool.com/exercises/5693e86b?track=javascript
 */
-- @block
-- @conn auction
-- @label view all bidders who have bid
SELECT
  name
FROM
  bidders
WHERE
  EXISTS (
    SELECT
      bidder_id
    FROM
      bids
    WHERE
      bidder_id = bidders.id
  )
;

/**
 * Further Exploration
 *
 * More often than not, we can get an equivalent result by using a `JOIN` clause
 * instead of a subquery. Can you figure out a `SELECT` query that uses a `JOIN`
 * clause returning the same output as the solution above?
 */
-- @label all bidders who have bid -- JOIN
SELECT DISTINCT
  name
FROM
  bidders b
  JOIN bids ON b.id = bids.bidder_id
;
