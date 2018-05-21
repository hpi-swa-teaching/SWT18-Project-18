layout
removeRowHoles
	| activeCell currentPosY nextPosY nextCells diff|

	1 to: rows size - 1 do: [:r |				
		activeCell := (rows at: r) cells at: 1.
		currentPosY := activeCell position y + activeCell height.
		nextCells := (rows at: r + 1) cells.
		nextPosY := (nextCells at: 1) position y.
		diff := currentPosY - nextPosY.
		nextCells do: [:c | c position: (c position x)@(c position y + diff)].
		].
	
	

	
	

	
	
