.mode csv
.separator "\t"
.print
.print # SignWriting Server database creation and import
.print

.print ## Importing
CREATE TABLE IF NOT EXISTS symbol(symkey text primary key unique, width int, height int, svg text);
.print symbols
.import source/symbol.txt symbol


.print
.print ## Count output
select 'symbol count ' || count(*) from symbol;

.quit
