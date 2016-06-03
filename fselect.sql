.open reuters.db

.output 'part_f.txt'
SELECT count(part1) FROM(
	(SELECT docid AS part1 FROM Frequency WHERE term LIKE "transactions")
	INNER JOIN
	(SELECT docid AS part2 FROM Frequency WHERE term LIKE "world")
	ON part1 = part2
	);
.output stdout