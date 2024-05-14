# Launch School Exercises

## LS180 - SQL Fundamentals

### DML, DDL, and DCL

#### Part 8

<https://launchschool.com/exercises/b76d78a6?track=javascript>

##### Question

Does the following statement use the DDL, or DML component of SQL?

```SQL
DELETE FROM things WHERE item = 'Cup';
```

##### Solution

`DELETE` statements delete a table's rows. The statement above deletes only the
rows whose `item` column is the string `'Cup'`. `DELETE` statements modify a
table's data, and are part of SQL's Data Manipulation Language.
