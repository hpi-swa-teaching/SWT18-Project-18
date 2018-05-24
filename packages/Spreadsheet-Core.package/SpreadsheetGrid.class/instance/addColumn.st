layout
addColumn
	| col |
	
	col := SpreadsheetColumnLabel newWithIndex: self columns size on: self.
	self rows do: [ :row |  self createCellAtRow: row col: col].
	self columns add: col.