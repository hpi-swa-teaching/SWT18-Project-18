accessing
addColumn
	
	| aColumn |
	aColumn := SpreadsheetTableDivision newWithIndex: self columns size on: self.
	self addColLabel: aColumn.
	self rows do: [ :aRow |  SpreadsheetCell row: aRow column: aColumn on: self].
	self columns add: aColumn