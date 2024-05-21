/**
 * Launch School Exercises
 * LS180 - SQL Fundamentals
 * Medium: Subqueries and More
 *
 * Set Up Database
 *
 * https://launchschool.com/exercises/505113c2?track=javascript
 */
-- @block
-- @conn auction
-- @label create tables
-- @label reset -- drop tables if exists
DROP TABLE IF EXISTS bidders,
items,
bids
;

-- @label create bidders table
CREATE TABLE bidders (id serial PRIMARY KEY, name text NOT NULL)
;

-- @label create items table
CREATE TABLE items (
  id serial PRIMARY KEY,
  name text NOT NULL,
  initial_price numeric(6, 2) NOT NULL,
  sales_price numeric(6, 2)
)
;

-- @label create bids table
CREATE TABLE bids (
  id serial PRIMARY KEY,
  bidder_id int NOT NULL REFERENCES bidders (id) ON DELETE CASCADE,
  item_id int NOT NULL REFERENCES items (id) ON DELETE CASCADE,
  amount numeric(6, 2) NOT NULL
)
;

-- @label create bidder_id, item_id index on bids
CREATE INDEX ON bids (bidder_id, item_id)
;

/* sql-formatter-disable */

-- @label insert into bidders
\copy bidders FROM 'bidders.csv' WITH HEADER CSV

-- @label insert into items
\copy items FROM 'items.csv' WITH HEADER CSV

-- @label insert into bids
\copy bids FROM 'bids.csv' WITH HEADER CSV

/* sql-formatter-enable */
