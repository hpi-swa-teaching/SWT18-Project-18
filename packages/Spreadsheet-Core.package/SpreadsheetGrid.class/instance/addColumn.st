layout
addColumn
	
	| col |
	col := SpreadsheetLabel newWithIndex: self columns size + 1 on: self type: #columnLabel.
	self rows do: [ :aRow |  self createCellAtRow:  aRow col: col].
	self columns add: col.
	self addColLabel: col.