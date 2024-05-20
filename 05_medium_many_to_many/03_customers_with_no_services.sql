/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Many to Many
 *
 * Get Customers with no Services
 *
 * https://launchschool.com/exercises/caa6a947?track=javascript
 */
-- @block
-- @conn billing
-- @label get customers with no services
SELECT
  c.*
FROM
  customers c
WHERE
  c.id NOT IN (
    SELECT
      customer_id
    FROM
      customers_services
  )
;

/*
Further exploration

Can you write a query that displays all customers with no services and all
services with no customers?
*/
-- @label customers w/o services & services w/o customers
SELECT
  c.*,
  cs.id cs_id,
  s.*
FROM
  customers c
  LEFT OUTER JOIN customers_services cs ON c.id = cs.customer_id
  FULL OUTER JOIN services s ON cs.service_id = s.id
WHERE
  cs.id IS NULL
;
