/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Subqueries and More
 *
 * EXPLAIN
 *
 * https://launchschool.com/exercises/27dac993?track=javascript
 */
-- @block
-- @conn auction
-- @label view query plan
EXPLAIN
SELECT
  name
FROM
  bidders
WHERE
  EXISTS (
    SELECT
      1
    FROM
      bids
    WHERE
      bids.bidder_id = bidders.id
  )
;

-- @label analyze query plan
EXPLAIN
ANALYZE
SELECT
  name
FROM
  bidders
WHERE
  EXISTS (
    SELECT
      1
    FROM
      bids
    WHERE
      bids.bidder_id = bidders.id
  )
;
