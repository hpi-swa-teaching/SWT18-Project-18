initialization
initialize

	super initialize.
	self 
		color: Color white;
		colorUnselected: Color white;
		borderWidth: 0;
		calcRepresentation: '';
		text: '';
		addStyleClass: #spreadsheetCell;
		addApplicationStyles: ((PHStyle for: #spreadsheetCell)
			boxSizing: #borderBox;
			padding: 4 @ 2;
			color: Color black;
			backgroundColor: Color white).
