/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Subqueries and More
 *
 * Scalar Subqueries
 *
 * https://launchschool.com/exercises/c0cbdaab?track=javascript
 */
-- @block
-- @conn auction
-- @label view item names and number of bids
SELECT
  name,
  (
    SELECT
      count(item_id)
    FROM
      bids
    WHERE
      bids.item_id = items.id
  )
FROM
  items
;

/**
 * Further Exploration
 *
 * If we wanted to get an equivalent result, without using a subquery, then we
 * would have to use a `LEFT OUTER JOIN`. Can you come up with the equivalent
 * query?
 */
-- @label view item names and number of bids -- JOIN
SELECT
  i.name,
  count(b.item_id)
FROM
  items i
  LEFT OUTER JOIN bids b ON i.id = b.item_id
GROUP BY
  i.name
;
