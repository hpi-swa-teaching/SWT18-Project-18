accessing
removeColumnHoles
	| activeCell currentPosX nextPosX nextCells diff activeLabel nextLabel|

	1 to: self columns size - 1 do: [:c |			
		activeCell := (self columns at: c) cells at: 1.
		activeLabel := (self columns at: c).
		currentPosX := activeCell position x + activeCell width.

		nextCells := (self columns at: c + 1) cells.
		nextLabel :=  (self columns at: c + 1).
		nextPosX := (nextCells at: 1) position x.
		
		diff := currentPosX - nextPosX.
		
		nextCells do: [:nc | nc position: (nc position x + diff)@(nc position y)].
		nextLabel position: nextLabel position x + diff @ nextLabel position y.
		].	
	
