layout
cellAtRowIndex: aRow colIndex: aCol
	|column|
	(aCol >= 0 and:  [aCol < self columns size])
		ifFalse: [^nil].
	column := (columns at: aCol + 1).
	(aRow >=  0 and:  [aRow < column cells size]) 
		ifFalse: [^nil].
	^ column cellAt: aRow + 1.
	
		