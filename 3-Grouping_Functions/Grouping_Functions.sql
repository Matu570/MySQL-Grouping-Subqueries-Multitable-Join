/*
Get the average:
AVG

Count:
COUNT

Get the major value of de group:
MAX

Get the minor value of de group:
MIN

Add it all up:
SUM

EXAMPLES:
SELECT AVG(id_enter) FROM enters;
SELECT AVG(id_enter) AS 'Enters average' FROM enters;
SELECT MAX(id_enter) AS 'Id with major number', title FROM enters;
SELECT MIN(id_enter) AS 'Id with minor number', title FROM enters;
SELECT SUM(id_enter) AS 'Add of all id numbers' FROM enters;

