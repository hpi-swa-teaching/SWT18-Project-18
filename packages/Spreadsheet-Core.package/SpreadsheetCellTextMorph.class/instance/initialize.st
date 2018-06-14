initialization
initialize 

	super initialize.
	self
		text: '';
		addStyleClass: #spreadsheetText;
		addApplicationStyles: ((PHStyle for: #spreadsheetText)
			boxSizing: #borderBox;
			padding: 4 @ 2;
			color: Color black;
			backgroundColor: Color white;
			border: 1 color: Color blue)