as yet unclassified
cellFromString: aString

	| string gridPosition aCell |
	string := (self simpleCellRegex matchesIn: aString) first.
	gridPosition := SpreadsheetRegexMatcher getColumnAndRowFromCellLabel: string.
	aCell := grid cellAtRowIndex: gridPosition y colIndex: gridPosition x.
	^ aCell