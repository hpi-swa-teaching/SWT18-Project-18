accessing
removeColumnHoles
	| activeCell currentPosX nextPosX nextCells diff|

	1 to: columns size - 1 do: [:c |			
		activeCell := (columns at: c) cells at: 1.
		currentPosX := activeCell position x + activeCell width.
		nextCells := (columns at: c + 1) cells.
		nextPosX := (nextCells at: 1) position x.
		diff := currentPosX - nextPosX.
		nextCells do: [:nc | nc position: (nc position x + diff)@(nc position y)].
		].	
	
