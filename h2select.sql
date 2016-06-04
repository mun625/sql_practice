.open reuters.db

.output 'part_h.txt'
SELECT (a.new_value*a.new_value*1.0) / (b.new_value * c.new_value)
FROM new_table a
INNER JOIN new_table b
INNER JOIN new_table c
ON a.new_row = '10080_txt_crude' AND a.new_col = '17035_txt_earn'
AND b.new_row = '10080_txt_crude' AND b.new_col = '10080_txt_crude'
AND c.new_row = '17035_txt_earn' AND c.new_col = '17035_txt_earn';
.output stdout