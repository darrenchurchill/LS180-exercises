/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Many to Many
 *
 * Services for each Customer
 *
 * https://launchschool.com/exercises/7ee03247?track=javascript
 */
-- @block
-- @conn billing
-- @label get services for each customer
SELECT
  c.name,
  string_agg(s.description, ', ') services
FROM
  customers c
  LEFT OUTER JOIN customers_services cs ON c.id = cs.customer_id
  LEFT OUTER JOIN services s ON cs.service_id = s.id
GROUP BY
  c.name
;
