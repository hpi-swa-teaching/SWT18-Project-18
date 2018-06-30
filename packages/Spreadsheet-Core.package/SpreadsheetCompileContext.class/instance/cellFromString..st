accessing
cellFromString: aString

	| string gridPosition |
	string := ('[a-zA-Z]+\d+' asRegex matchesIn: aString) first.
	gridPosition := SpreadsheetRegexMatcher getColumnAndRowFromCellLabel: string.
	cell := grid cellAtRowIndex: gridPosition y colIndex: gridPosition x.
	^ cell