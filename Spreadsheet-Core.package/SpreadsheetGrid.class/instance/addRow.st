accessing
addRow 
	| row |
	
	row := SpreadsheetLabel newWithIndex: self rows size withType: #row on: self.
	self columns do: [ :col | SpreadsheetCell row: row column: col on: self].
	self rows add: row.
