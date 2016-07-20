
DO
$do$
DECLARE 
	l int;
BEGIN
	l := 1;
	DELETE FROM t.Principal;
	WHILE(l <= 5) 
	loop
		INSERT INTO t.Principal VALUES(l);
		l := l+1;
	END LOOP;
END;
$do$

