as yet unclassified
cellFromString: aString

	| string gridPosition aCell |
	string := (self cellRegex matchesIn: aString) first.
	gridPosition := SpreadsheetRegexMatcher getColumnAndRowFromCellLabel: string.
	aCell := self grid cellAtRowIndex: gridPosition y colIndex: gridPosition x.
	^ aCell