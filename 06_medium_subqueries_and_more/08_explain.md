# Launch School Exercises

## LS180 - SQL Fundamentals

### Medium: Subqueries and More

#### Part 8

<https://launchschool.com/exercises/27dac993?track=javascript>

##### Question

For this exercise, let's explore the `EXPLAIN` PostgreSQL statement. It's a very
useful SQL statement that lets us analyze the efficiency of our SQL statements.
More specifically, use `EXPLAIN` to check the efficiency of the query statement
we used in the exercise on `EXISTS`:

```sql
SELECT name FROM bidders
WHERE EXISTS (SELECT 1 FROM bids WHERE bids.bidder_id = bidders.id);
```

First use just `EXPLAIN`, then include the `ANALYZE` option as well. For your
answer, list any SQL statements you used, along with the output you get back,
and your thoughts on what is happening in both cases.

##### Solution

###### `EXPLAIN`

The `EXPLAIN` command lets you view PostgreSQL's query plan for any given query.
The query plan is a tree of plan nodes; 1 node per line in the default output
format. Scan nodes are at the bottom, with any additional processing nodes
listed above them, depending on the query. Each node has an estimated startup
and total cost, and you can interpret the topmost node's cost at the total
estimated query cost.

The cost units are arbitrary, but still useful for comparing different queries
on the same system.

Using `EXPLAIN` on the provided statement:

```sql
EXPLAIN
SELECT
  name
FROM
  bidders
WHERE
  EXISTS (
    SELECT
      1
    FROM
      bids
    WHERE
      bids.bidder_id = bidders.id
  )
;
```

returns the output:

```text
                                QUERY PLAN
--------------------------------------------------------------------------
 Hash Join  (cost=33.38..66.47 rows=635 width=32)
   Hash Cond: (bidders.id = bids.bidder_id)
   ->  Seq Scan on bidders  (cost=0.00..22.70 rows=1270 width=36)
   ->  Hash  (cost=30.88..30.88 rows=200 width=4)
         ->  HashAggregate  (cost=28.88..30.88 rows=200 width=4)
               Group Key: bids.bidder_id
               ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4)
(7 rows)
```

###### `ANALYZE`

Using `EXPLAIN ANALYZE` on the provided statement:

```sql
EXPLAIN
ANALYZE
SELECT
  name
FROM
  bidders
WHERE
  EXISTS (
    SELECT
      1
    FROM
      bids
    WHERE
      bids.bidder_id = bidders.id
  )
;
```

executes the query and returns the output:

```text
                                                     QUERY PLAN
---------------------------------------------------------------------------------------------------------------------
 Hash Join  (cost=33.38..66.47 rows=635 width=32) (actual time=0.095..0.099 rows=6 loops=1)
   Hash Cond: (bidders.id = bids.bidder_id)
   ->  Seq Scan on bidders  (cost=0.00..22.70 rows=1270 width=36) (actual time=0.013..0.014 rows=7 loops=1)
   ->  Hash  (cost=30.88..30.88 rows=200 width=4) (actual time=0.058..0.059 rows=6 loops=1)
         Buckets: 1024  Batches: 1  Memory Usage: 9kB
         ->  HashAggregate  (cost=28.88..30.88 rows=200 width=4) (actual time=0.029..0.031 rows=6 loops=1)
               Group Key: bids.bidder_id
               Batches: 1  Memory Usage: 40kB
               ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.010..0.014 rows=26 loops=1)
 Planning Time: 0.103 ms
 Execution Time: 0.141 ms
(11 rows)
```

The `ANALYZE` output includes the same output as `EXPLAIN`, as well as actual
planning and execution times for the entire query and each of its nodes.
