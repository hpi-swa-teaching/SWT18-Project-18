initialization
initialize 

	super initialize.
	self
		text: '';
		state: #passive;
		addFallbackStyles: ((PHStyle for: #textEntry)
			boxSizing: #contentBox;
			padding: 4 @ 2;
			color: Color black;
			backgroundColor: Color white;
			border: 2 color: Color blue)