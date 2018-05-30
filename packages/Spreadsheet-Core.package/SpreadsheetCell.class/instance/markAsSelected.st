visual properties
markAsSelected

	self
		addStyleClass: #spreadsheetCell;
		addApplicationStyles: ((PHStyle for: #spreadsheetCell)
			boxSizing: #borderBox;
			padding: 4 @ 2;
			color: Color black;
			backgroundColor: self colorSelected).
