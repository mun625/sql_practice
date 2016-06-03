.open matrix.db

.output 'part_g.txt'
SELECT new_value FROM(
	SELECT new_row, new_col, sum(can_value) AS new_value FROM(
		SELECT a.row_num AS new_row, b.col_num AS new_col, a.value * b.value AS can_value 
		FROM a INNER JOIN b on a.col_num = b.row_num
		) GROUP BY new_row, new_col
	) WHERE new_row = 2 AND new_col = 3;
.output stdout