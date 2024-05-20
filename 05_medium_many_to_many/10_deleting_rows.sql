/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Many to Many
 *
 * Deleting Rows
 *
 * https://launchschool.com/exercises/d0d95d39?track=javascript
 */
-- @block
-- @conn billing
-- @label preview any customers_services to be deleted
SELECT
  *
FROM
  customers_services
WHERE
  service_id = (
    SELECT
      id
    FROM
      services
    WHERE
      description = 'Bulk Email'
  )
;

-- @label delete 'Bulk Email' entries from customer_services
DELETE FROM customers_services
WHERE
  service_id = (
    SELECT
      id
    FROM
      services
    WHERE
      description = 'Bulk Email'
  )
;

-- @label delete 'Bulk Email' service
DELETE FROM services
WHERE
  description = 'Bulk Email'
;

-- @label preview data to be deleted
SELECT
  *
FROM
  customers
WHERE
  name = 'Chen Ke-Hua'
;

-- @label delete from 'Chen Ke-Hua' customers
DELETE FROM customers
WHERE
  name = 'Chen Ke-Hua'
;
