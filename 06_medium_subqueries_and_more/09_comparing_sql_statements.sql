/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Subqueries and More
 *
 * Comparing SQL Statements
 *
 * https://launchschool.com/exercises/549674f5?track=javascript
 */
-- @block
-- @conn auction
-- @label analyze subquery query plan
EXPLAIN
ANALYZE
SELECT
  max(bid_counts.count)
FROM
  (
    SELECT
      count(bidder_id)
    FROM
      bids
    GROUP BY
      bidder_id
  ) AS bid_counts
;

-- @label analyze no subquery query plan
EXPLAIN
ANALYZE
SELECT
  count(bidder_id) AS max_bid
FROM
  bids
GROUP BY
  bidder_id
ORDER BY
  max_bid DESC
LIMIT
  1
;
