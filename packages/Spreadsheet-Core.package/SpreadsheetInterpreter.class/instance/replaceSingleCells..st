replace string
replaceSingleCells: aString

	| gridPosition cell |
	^ SpreadsheetRegexMatcher cellRegex 
		copy: aString
		translatingMatchesUsing: [ :each | 
			gridPosition := SpreadsheetRegexMatcher getColumnAndRowFromCellLabel: each.
			cell := grid cellAtRowIndex: gridPosition y colIndex: gridPosition x.
			cell ifNil: [ each ].
			cell text]