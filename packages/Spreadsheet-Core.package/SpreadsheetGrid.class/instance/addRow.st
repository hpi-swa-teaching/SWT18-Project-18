layout
addRow 
	| row |
	
	row := SpreadsheetRowLabel newWithIndex: (self rows size + 1) on: self.
	self columns do: [ :col | self createCellAtRow: row col: col.].
	self rows add: row.