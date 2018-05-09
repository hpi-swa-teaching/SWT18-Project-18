accessing
addColumn
	
	| aColumn |
	aColumn := SpreadsheetLabel newWithIndex: self columns size on: self.
	self rows do: [ :aRow |  SpreadsheetCell row: aRow column: aColumn on: self].
	self columns add: aColumn