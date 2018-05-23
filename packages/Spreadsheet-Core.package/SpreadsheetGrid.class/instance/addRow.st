layout
addRow 
	| row |
	
	row := SpreadsheetLabel newWithIndex: self rows size withType: #row on: self.
	self columns do: [ :col | self createCellAtRow: row col: col.].
	self rows add: row.