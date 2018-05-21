accessing
addColumn
	| col |
	
	col := SpreadsheetLabel newWithIndex: self columns size withType: #column on: self.
	self rows do: [ :row |  SpreadsheetCell row: row column: col on: self].
	self	columns add: col.