initialization
initialize

	super initialize.
	self 
		backgroundColor: Color white;
		borderColor: Color gray;
		calcRepresentation: '';
		text: '';
		padding: 4 @ 2.
		"addStyleClass: #spreadsheetCell;
		addFallbackStyles: ((PHStyle for: #spreadsheetCell)
				boxSizing: #borderBox;
				padding: 4 @ 2;
				border: 1 color: Color black;
				backgroundColor: Color white)."
				