initialization
initialize

	super initialize.
	self 
		color: Color white;
		colorUnselected: Color white;
		borderWidth: 0.5;
		calcRepresentation: '';
		text: '';
		addStyleClass: #spreadsheetCell;
		addApplicationStyles: ((PHStyle for: #spreadsheetCell)
			boxSizing: #borderBox;
			padding: 4 @ 2;
			border: 1 color: Color black;
			backgroundColor: Color white).