manage columns
addColumnWithIndex: anInteger

	| newColumn |
	
	newColumn := SpreadsheetColumnLabel newWithIndex: anInteger on: self grid.
	self columns add: newColumn beforeIndex: anInteger.
	self columns do: [:aColumn | aColumn updateIndex].
	self rows do: [:aRow |  SpreadsheetCell newInRow: aRow column: newColumn on: self grid].
	self update.