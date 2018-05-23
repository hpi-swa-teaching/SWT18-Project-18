layout
addColumn
	| col |
	
	col := SpreadsheetLabel newWithIndex: self columns size withType: #column on: self.
	self rows do: [ :row |  self createCellAtRow: row col: col].
	self columns add: col.