grid access
cellFromString: aString
	
	| gridPosition |
	gridPosition := SpreadsheetRegexMatcher getColumnAndRowFromCellLabel: aString.
	^ self data cellAtIndex: gridPosition.