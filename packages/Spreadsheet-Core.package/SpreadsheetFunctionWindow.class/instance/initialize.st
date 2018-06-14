as yet unclassified
initialize

	super initialize.
	self
		minSize: 300@20;
		text: '';
		addStyleClass: #spreadsheetText;
		addApplicationStyles: ((PHStyle for: #spreadsheetText)
			boxSizing: #borderBox;
			padding: 4 @ 2;
			color: Color black;
			backgroundColor: Color white;
			border: 1 color: Color blue)