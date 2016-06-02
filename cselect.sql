.open reuters.db

.output 'part_c.txt'
select count(term) from Frequency where docid = "10398_txt_earn" and count = 1
union
select count(term) from Frequency where docid = "925_txt_trade" and count = 1
.output stdout