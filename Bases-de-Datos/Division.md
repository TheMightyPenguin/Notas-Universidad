Relational Division in SQL The Easy Way
12 Replies
I recently studied SQL as part of an introductory course on databases. SQL
itself is not particularly difficult to grasp, yet compared to relational
algebra, the division operation is much more complex. In relational algebra,
there is a division operator, which has no direct equivalent in SQL. This means
that you’ll have to find a workaround. There are a number of ways to express
division in SQL, and with the exception of one, they are all quite complex.

Division identifies attribute values from a relation that are paired with all
of the values from another relation. Popular textbook examples are the
identification of suppliers who deliver all parts of a particular color.
An intuitive solution would be to count the number of distinct red parts,
and then look at every distributor to find out which of those deliver all
those parts. To express this in SQL, you have to use the set theoretic
operators “having” and “group by”, and then you simply count the tuples
meeting certain criteria.

Let’s say you have table T1 in front of you and want to find out which A’s
have both b2 and b3. You can assume that b2 and b3 are the red parts. If you’ve
only been exposed to standard textbook treatments of division in SQL, you may
be surprised that the problem can be solved as simply as this:

SELECT A
FROM T1
WHERE B IN (
             SELECT B
             FROM T2
           )
GROUP BY A
HAVING COUNT(*) = (
                    SELECT COUNT (*)
                    FROM T2
                  );
Of course you can add a Where clause to the last expression.

The previous example is quite easy to grasp. The same can’t be said about how
SQL division is commonly taught. Standard database theory textbooks expose you
to a statement that is doubly nested and peppered with two negations. No matter
how smart you are, it takes longer to parse than the previous example. I think
you can safely call the following a monstrosity:

SELECT DISTINCT x.A
FROM T1 AS x
WHERE NOT EXISTS (
                  SELECT *
                  FROM  T2 AS y
                  WHERE NOT EXISTS (
                                     SELECT *
                                     FROM T1 AS z
                                     WHERE (z.A=x.A) AND (z.B=y.B)
                                   )
                 );
