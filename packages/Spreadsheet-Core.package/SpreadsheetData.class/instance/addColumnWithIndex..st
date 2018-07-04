accessing columns
addColumnWithIndex: anInteger

	| newColumn |
	
	newColumn := SpreadsheetColumnLabel newWithIndex: anInteger on: self.
	self columns add: newColumn beforeIndex: anInteger.
	self columns do: [:aColumn | aColumn updateIndex].
	self rows do: [:aRow |  SpreadsheetCell newInRow: aRow column: newColumn on: self with: (self grid flyweightFactory getFlyweightFor: #nat)].
	self update.