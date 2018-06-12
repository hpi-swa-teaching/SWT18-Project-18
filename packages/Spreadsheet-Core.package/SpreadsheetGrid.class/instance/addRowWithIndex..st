managing rows
addRowWithIndex: anInteger

	| newRow |
	
	newRow := SpreadsheetRowLabel newWithIndex: anInteger on: self.
	self rows add: newRow beforeIndex: anInteger.
	self rows do: [:aRow | aRow updateIndex].
	self columns do: [:aColumn |  self createCellAtRow: newRow col: aColumn].