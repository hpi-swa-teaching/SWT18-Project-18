layout
createCellAtRow: row col: column
	
	(SpreadsheetCell row: row column: column on: self)
		initializeLeftEdge;
		initializeRightEdge;
		initializeTopEdge;
		initializeBottomEdge.