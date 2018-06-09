managing rows
addRow 
	| row |
	
	row := SpreadsheetRowLabel newWithIndex: (self rows size + 1) on: self.
	self rows add: row.
	self columns do: [:col | self createCellAtRow: row col: col].