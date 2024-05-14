# Launch School Exercises

## LS180 - SQL Fundamentals

### DML, DDL, and DCL

#### Part 4

<https://launchschool.com/exercises/571e85d4?track=javascript>

##### Question

Does the following statement use the DDL or DML component of SQL?

```sql
ALTER TABLE things
DROP CONSTRAINT things_item_key;
```

##### Solution

`ALTER TABLE` statements alter a table's schema, or its defined structure and
constraints, and are part of SQL's Data Definition Language. This statement
removes the constraint named `things_item_key` from the `things` table.
