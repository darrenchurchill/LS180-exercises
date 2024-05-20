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

/**
 * Further Exploration
 *
 * Can you modify the statement above so the output looks like this?
 *
 *      name      |    description
 * ---------------+--------------------
 *  Chen Ke-Hua   | High Bandwidth
 *                | Unix Hosting
 *  Jim Pornot    | Dedicated Hosting
 *                | Unix Hosting
 *                | Bulk Email
 *  Lynn Blake    | Whois Registration
 *                | High Bandwidth
 *                | Business Support
 *                | DNS
 *                | Unix Hosting
 *  Nancy Monreal |
 *  Pat Johnson   | Whois Registration
 *                | DNS
 *                | Unix Hosting
 *  Scott Lakso   | DNS
 *                | Dedicated Hosting
 *                | Unix Hosting
 * (17 rows)
 *
 */
-- @label investigation -- show name, prev_name, and description
SELECT
  c.name,
  lag(c.name) OVER (
    ORDER BY
      c.name
  ) prev_name,
  s.description
FROM
  customers c
  LEFT OUTER JOIN customers_services cs ON c.id = cs.customer_id
  LEFT OUTER JOIN services s ON cs.service_id = s.id
;

-- @label get services for each customer
SELECT
  nullif(
    c.name,
    lag(c.name) OVER (
      ORDER BY
        c.name
    )
  ) AS name,
  s.description
FROM
  customers c
  LEFT OUTER JOIN customers_services cs ON c.id = cs.customer_id
  LEFT OUTER JOIN services s ON cs.service_id = s.id
;
