# Launch School Exercises

## LS180 - SQL Fundamentals

### DML, DDL, and DCL

#### Part 3

<https://launchschool.com/exercises/afb1aadd?track=javascript>

##### Question

Does the following statement use the DDL or DML component of SQL?

```sql
CREATE TABLE things (
  id serial PRIMARY KEY,
  item text NOT NULL UNIQUE,
  material text NOT NULL
);
```

##### Solution

`CREATE TABLE` statements define a table's schema, or its structure and
constraints, and are part of SQL's Data Definition Language.
