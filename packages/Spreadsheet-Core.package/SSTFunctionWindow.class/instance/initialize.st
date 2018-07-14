initialize
initialize

	super initialize.
	self
		minSize: 300@20;
		text: '';
		addFallbackStyles: ((PHStyle for: #textEntry)
			boxSizing: #borderBox;
			padding: 4 @ 2;
			color: Color black;
			backgroundColor: Color white;
			border: 1 color: Color blue)