as yet unclassified
addRow 
	
	| row |
	row := SpreadsheetRow newWithIndex: self rows size + 1 on: self.
	self columns do: [ :col | SpreadsheetCell row: row column: col on: self].
	self rows add: row