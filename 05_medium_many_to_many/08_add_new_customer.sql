/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Many to Many
 *
 * Add New Customer
 *
 * https://launchschool.com/exercises/cdb829c9?track=javascript
 */
-- @block
-- @conn billing
-- @label add new customer to database
INSERT INTO
  customers (name, payment_token)
VALUES
  ('John Doe', 'EYODHLCN')
;

-- @label preview John Doe's customers_services insertion data
SELECT
  c.name,
  c.id customer_id,
  s.description,
  s.id service_id
FROM
  customers c
  CROSS JOIN services s
WHERE
  c.name = 'John Doe'
  AND s.description IN ('Unix Hosting', 'DNS', 'Whois Registration')
;

-- @label add John Doe's services
INSERT INTO
  customers_services (customer_id, service_id)
SELECT
  c.id customer_id,
  s.id service_id
FROM
  customers c
  CROSS JOIN services s
WHERE
  c.name = 'John Doe'
  AND s.description IN ('Unix Hosting', 'DNS', 'Whois Registration')
;
