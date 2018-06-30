replace string
observedCellsFromSingleClells: aString for: aCell

	| gridPosition cell |
	^ SpreadsheetRegexMatcher cellRegex 
		matchesIn: aString
		do: [ :each | 
			gridPosition := SpreadsheetRegexMatcher getColumnAndRowFromCellLabel: each.
			cell := grid cellAtRowIndex: gridPosition y colIndex: gridPosition x.
			aCell observedCells add: cell.
			cell dependentCells add: aCell]