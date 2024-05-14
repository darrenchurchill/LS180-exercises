# Launch School Exercises

## LS180 - SQL Fundamentals

### DML, DDL, and DCL

#### Part 6

<https://launchschool.com/exercises/41748e37?track=javascript>

##### Question

Does the following statement use the DDL or DML component of SQL?

```SQL
UPDATE things
SET material = 'plastic'
WHERE item = 'Cup';
```

##### Solution

`UPDATE` statements alter a table's data by modifying certain column values.
This `UPDATE` statement modifies only the rows' `material` columns where the
rows' `item` value is `'Cup'`. `UPDATE` statements are a part of SQL's Data
Manipulation Language.
