.open reuters.db

.output 'part_e.txt'
SELECT count(*) FROM(
	SELECT docid, count(term) FROM Frequency GROUP BY docid HAVING count(term) > 300
	);
.output stdout