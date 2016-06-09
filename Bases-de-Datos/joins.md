# Joins
There are three basic types of join:

- INNER join compares two tables and only returns results where a match exists.
Records from the 1st table are duplicated when they match multiple results in
the 2nd. INNER joins tend to make result sets smaller, but because records can
be duplicated this isn't guaranteed.

- CROSS join compares two tables and return every possible combination of rows
from both tables. You can get a lot of results from this kind of join that
might not even be meaningful, so use with caution.

- OUTER join compares two tables and returns data when a match is available or
NULL values otherwise. Like with INNER join, this will duplicate rows in the
one table when it matches multiple records in the other table. OUTER joins tend
to make result sets larger, because they won't by themselves remove any records
from the set. You must also qualify an OUTER join to determine when and where
to add the NULL values:
  - LEFT means keep all records from the 1st table no matter what and insert
  NULL values when the 2nd table doesn't match.
  - RIGHT means the opposite: keep all records from the 2nd table no matter
  what and insert NULL values whent he 1st table doesn't match.
  - FULL means keep all records from both tables, and insert a NULL value in
  either table if there is no match.

Often you see will the OUTER keyword omitted from the syntax. Instead it will
just be "LEFT JOIN", "RIGHT JOIN", or "FULL JOIN". This is done because INNER
and CROSS joins have no meaning with respect to LEFT, RIGHT, or FULL, and so
these are sufficient by themselves to unambiguously indicate an OUTER join.

Here is an example of when you might want to use each type:

- INNER: You want to return all records from the "Invoice" table, along with
their corresponding "InvoiceLines". This assumes that every valid Invoice will
 have at least one line.
- OUTER: You want to return all "InvoiceLines" records for a particular
Invoice, along with their corresponding "InventoryItem" records. This is a
business that also sells service, such that not all InvoiceLines will have an
IventoryItem.
- CROSS: You have a digits table with 10 rows, each holding values '0' through
'9'. You want to create a date range table to join against, so that you end up
with one record for each day within the range. By CROSS-joining this table with
itself repeatedly you can create as many consecutive integers as you need
(given you start at 10 to 1st power, each join adds 1 to the exponent). Then
use the DATEADD() function to add those values to your base date for the range.
