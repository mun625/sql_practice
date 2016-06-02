.open reuters.db

.output 'part_b.txt'
select count(term) from Frequency where docid = "10398_txt_earn" and count = 1;
.output stdout