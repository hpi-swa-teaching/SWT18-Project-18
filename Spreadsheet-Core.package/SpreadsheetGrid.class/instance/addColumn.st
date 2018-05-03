as yet unclassified
addColumn
	
	| col |
	col := SpreadsheetColumn newWithIndex: self columns size + 1 on: self.
	self rows do: [ :row |  SpreadsheetCell row: row column: col on: self].
	self columns add: col