accessing
selection 

	^ selection ifNil: [ selection := SpreadsheetCellSelection on: self]