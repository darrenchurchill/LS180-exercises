/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Subqueries and More
 *
 * Query from a Transient Table
 *
 * https://launchschool.com/exercises/70e83085?track=javascript
 */
-- @block
-- @conn auction
-- @label view largest number of bids from 1 bidder
SELECT
  max(num_bids)
FROM
  (
    SELECT
      count(*) num_bids
    FROM
      bids
    GROUP BY
      bidder_id
  )
;
