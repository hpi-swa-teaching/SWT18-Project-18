grid access
cellFromString: aString
	
	| gridPosition |
	gridPosition := SSTRegexMatcher getColumnAndRowFromCellLabel: aString.
	^ self data cellAtIndex: gridPosition