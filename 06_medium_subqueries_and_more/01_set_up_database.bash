# Launch School Exercises
# LS180 - SQL Fundamentals
# Medium: Subqueries and More
#
# Set Up Database
#
# https://launchschool.com/exercises/505113c2?track=javascript
#
cd "$(dirname "$0")" || exit 1
dropdb auction
createdb auction
psql auction < ./01_set_up_database.sql
