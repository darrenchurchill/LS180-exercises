# Launch School Exercises

## LS180 - SQL Fundamentals

### Medium: Subqueries and More

#### Part 9

<https://launchschool.com/exercises/549674f5?track=javascript>

##### Question

In this exercise, we'll use EXPLAIN ANALYZE to compare the efficiency of two SQL
statements. These two statements are actually from the "Query From a Virtual
Table" exercise in this set. In that exercise, we stated that our subquery-based
solution:

```sql
SELECT MAX(bid_counts.count) FROM
  (SELECT COUNT(bidder_id) FROM bids GROUP BY bidder_id) AS bid_counts;
```

was actually faster than the simpler equivalent without subqueries:

```sql
SELECT COUNT(bidder_id) AS max_bid FROM bids
  GROUP BY bidder_id
  ORDER BY max_bid DESC
  LIMIT 1;
```

In this exercise, we will demonstrate this fact.

Run EXPLAIN ANALYZE on the two statements above. Compare the planning time,
execution time, and the total time required to run these two statements. Also
compare the total "costs". Which statement is more efficient and why?

##### Solution

The first statement, with a subquery, returns:

```text
                                                  QUERY PLAN
---------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=37.15..37.16 rows=1 width=8) (actual time=0.041..0.044 rows=1 loops=1)
   ->  HashAggregate  (cost=32.65..34.65 rows=200 width=12) (actual time=0.036..0.037 rows=6 loops=1)
         Group Key: bids.bidder_id
         Batches: 1  Memory Usage: 40kB
         ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.013..0.018 rows=26 loops=1)
 Planning Time: 0.817 ms
 Execution Time: 0.201 ms
(7 rows)
```

The second statement, with no subquery, returns:

```text
                                                     QUERY PLAN
---------------------------------------------------------------------------------------------------------------------
 Limit  (cost=35.65..35.65 rows=1 width=12) (actual time=0.045..0.046 rows=1 loops=1)
   ->  Sort  (cost=35.65..36.15 rows=200 width=12) (actual time=0.044..0.045 rows=1 loops=1)
         Sort Key: (count(bidder_id)) DESC
         Sort Method: top-N heapsort  Memory: 25kB
         ->  HashAggregate  (cost=32.65..34.65 rows=200 width=12) (actual time=0.019..0.021 rows=6 loops=1)
               Group Key: bidder_id
               Batches: 1  Memory Usage: 40kB
               ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.007..0.009 rows=26 loops=1)
 Planning Time: 0.108 ms
 Execution Time: 0.081 ms
(10 rows)
```

I'm using PostgreSQL v16. Here, it seems to make more difference which query is
executed first in a session than it does what type each of these queries is. The
second query usually executed faster than the first query. Often, the first
query also has a long planning time.

You can see that the non-subquery statement requires a sort operation, which
could make the query much slower on a larger data set.
