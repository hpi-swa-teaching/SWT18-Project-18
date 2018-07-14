accessing cells
cellAtRowIndex: aRow colIndex: aCol
	|column|
	(aCol >= 1 and:  [aCol <= self columns size])
		ifFalse: [^nil].
	column := (columns at: aCol).
	(aRow >=  1 and:  [aRow <= column cells size]) 
		ifFalse: [^nil].
	^ column cellAt: aRow
	
		