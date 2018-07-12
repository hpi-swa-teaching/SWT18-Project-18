as yet unclassified
cellsFrom: anExpression
	
	|startEndPoints startPoint endPoint cells|
	startEndPoints  := SpreadsheetRegexMatcher getCellIndicesForString: anExpression.
	startPoint := startEndPoints first.
	endPoint := startEndPoints second.
	cells := self grid getCellsFrom: (self grid cellAtRowIndex: startPoint y colIndex: startPoint x) to: (self grid cellAtRowIndex: endPoint y colIndex: endPoint x).
	^ cells