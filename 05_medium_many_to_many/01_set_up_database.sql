/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Many to Many
 *
 * Set Up Database
 *
 * https://launchschool.com/exercises/ad984e31?track=javascript
 */
-- @block
-- @conn billing
-- @label create tables
-- @label reset -- drop tables if exists
DROP TABLE IF EXISTS customers,
services,
customer_services
;

-- @label create customers table
CREATE TABLE customers (
  id serial PRIMARY KEY,
  name text NOT NULL,
  payment_token char(8) NOT NULL UNIQUE CHECK (NOT regexp_like (payment_token, '[^A-Z]'))
)
;

-- @label create services table
CREATE TABLE services (
  id serial PRIMARY KEY,
  description text NOT NULL,
  price numeric(10, 2) NOT NULL CHECK (price >= 0.00)
)
;

-- @label insert into customers
INSERT INTO
  customers (name, payment_token)
VALUES
  ('Pat Johnson', 'XHGOAHEQ'),
  ('Nancy Monreal', 'JKWQPJKL'),
  ('Lynn Blake', 'KLZXWEEE'),
  ('Chen Ke-Hua', 'KWETYCVX'),
  ('Scott Lakso', 'UUEAPQPS'),
  ('Jim Pornot', 'XKJEYAZA')
;

-- @label insert into services
INSERT INTO
  services (description, price)
VALUES
  ('Unix Hosting', 5.95),
  ('DNS', 4.95),
  ('Whois Registration', 1.95),
  ('High Bandwidth', 15.00),
  ('Business Support', 250.00),
  ('Dedicated Hosting', 50.00),
  ('Bulk Email', 250.00),
  ('One-to-one Training', 999.00)
;

-- @label create join table
CREATE TABLE customers_services (
  id serial PRIMARY KEY,
  customer_id int NOT NULL REFERENCES customers (id) ON DELETE CASCADE,
  service_id int NOT NULL REFERENCES services (id),
  UNIQUE (customer_id, service_id)
)
;

-- @label insert into customers_services
INSERT INTO
  customers_services (customer_id, service_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (3, 1),
  (3, 2),
  (3, 3),
  (3, 4),
  (3, 5),
  (4, 1),
  (4, 4),
  (5, 1),
  (5, 2),
  (5, 6),
  (6, 1),
  (6, 6),
  (6, 7)
;
