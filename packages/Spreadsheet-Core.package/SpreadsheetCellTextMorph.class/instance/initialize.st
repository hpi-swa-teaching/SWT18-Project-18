initialization
initialize 

	super initialize.
	self
		text: '';
		state: #passive;
		addApplicationStyles: ((PHStyle for: #textEntry)
			boxSizing: #borderBox;
			padding: 4 @ 2;
			color: Color black;
			backgroundColor: Color white;
			border: 1 color: Color blue)