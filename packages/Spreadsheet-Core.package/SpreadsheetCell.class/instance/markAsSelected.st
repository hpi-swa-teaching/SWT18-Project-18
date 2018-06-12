visual properties
markAsSelected

	self
		selected: true;
		addStyleClass: #spreadsheetCell;
		addApplicationStyles: ((PHStyle for: #spreadsheetCell)
			boxSizing: #borderBox;
			padding: 4 @ 2;
			color: Color black;
			backgroundColor: self colorSelected).
