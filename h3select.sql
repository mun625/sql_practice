.open reuters.db

.output 'part_h.txt'
SELECT new_value
FROM new_table
WHERE new_row = '10080_txt_crude' AND new_col = '17035_txt_earn';
.output stdout