accessing
addRow 
	
	| row |
	row := SpreadsheetTableDivision newWithIndex: self rows size on: self.	
	self addRowLabel: row.
	self columns do: [ :col | 		
		SpreadsheetCell row: row column: col on: self.].
	self rows add: row.