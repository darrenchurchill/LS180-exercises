/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Many to Many
 *
 * Hypothetically
 *
 * https://launchschool.com/exercises/07237f00?track=javascript
 */
-- @block
-- @conn billing
-- @label current expected income srvs > $100
SELECT
  sum(s.price)
FROM
  services s
  JOIN customers_services cs ON s.id = cs.service_id
WHERE
  s.price > 100
;

-- @label hypothetical max income srvs > $100
SELECT
  count(DISTINCT c.id) * sum(s.price) FILTER (
    WHERE
      s.price > 100
  ) "sum"
FROM
  customers c
  LEFT OUTER JOIN customers_services cs ON c.id = cs.customer_id
  FULL OUTER JOIN services s ON cs.service_id = s.id
;
