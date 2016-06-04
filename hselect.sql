.open reuters.db

.output 'part_i.txt'
CREATE TABLE new_table AS
SELECT *
FROM(
	SELECT new_row, new_col, sum(can_value) AS new_value 
	FROM(
		SELECT a.docid AS new_row, b.docid AS new_col, a.count * b.count AS can_value 
		FROM(
			Frequency a
			INNER JOIN Frequency b on a.term = b.term
		)
	) GROUP BY new_row, new_col
)
WHERE (new_row = '10080_txt_crude' AND new_col = '17035_txt_earn') OR (new_row = '10080_txt_crude' AND new_col = '10080_txt_crude') OR (new_row = '17035_txt_earn' AND new_col = '17035_txt_earn');
.output stdout
