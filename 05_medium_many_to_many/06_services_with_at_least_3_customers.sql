/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Many to Many
 *
 * Services with at least 3 Customers
 *
 * https://launchschool.com/exercises/17df598b?track=javascript
 */
-- @block
-- @conn billing
-- @label get services with >= 3 customers
SELECT
  s.description,
  count(cs.customer_id)
FROM
  services s
  JOIN customers_services cs ON s.id = cs.service_id
GROUP BY
  s.description
HAVING
  count(cs.customer_id) >= 3
;
