/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Many to Many
 *
 * Get Customers with Services
 *
 * https://launchschool.com/exercises/82f5c8cb?track=javascript
 */
-- @block
-- @conn billing
-- @label get customers with services
SELECT DISTINCT
  c.*
FROM
  customers c
  JOIN customers_services cs ON c.id = cs.customer_id
;
