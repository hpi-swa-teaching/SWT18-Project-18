initialization
initialize 

	super initialize.
	self
		text: '';
		addApplicationStyles: ((PHStyle forAny)
			boxSizing: #contentBox;
			padding: 4 @ 2;
			color: Color black;
			border: 2 color: Color blue);
		addApplicationStyles: ((PHStyle for: #selection) 
			backgroundColor: (Color r: 0 g: 0 b: 255 alpha: 0.3))