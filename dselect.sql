.open reuters.db

.output 'part_d.txt'
SELECT count(*) FROM(
	SELECT * FROM Frequency WHERE term LIKE 'legal' OR term LIKE 'law' GROUP BY docid
	);
.output stdout