/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Many to Many
 *
 * Get Services with no Customers
 *
 * https://launchschool.com/exercises/10291026?track=javascript
 */
-- @block
-- @conn billing
-- @label get services with no customers
SELECT
  s.description
FROM
  customers_services cs
  RIGHT OUTER JOIN services s ON s.id = cs.service_id
WHERE
  cs.id IS NULL
;
