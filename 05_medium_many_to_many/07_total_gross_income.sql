/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Many to Many
 *
 * Total Gross Income
 *
 * https://launchschool.com/exercises/6676e2ac?track=javascript
 */
-- @block
-- @conn billing
-- @label get total gross income
SELECT
  sum(s.price) gross
FROM
  services s
  JOIN customers_services cs ON s.id = cs.service_id
;
