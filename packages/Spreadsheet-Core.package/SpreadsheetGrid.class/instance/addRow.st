layout
addRow 
	
	| row |
	row := SpreadsheetLabel newWithIndex: self rows size + 1 on: self type: #rowLabel.
	self columns do: [ :col | self createCellAtRow:  row col: col].
	self rows add: row.
	self addRowLabel: row