initialization
initialize 

	super initialize.
	self
		text: '';
		addApplicationStyles: ((PHStyle forAny)
			boxSizing: #contentBox;
			padding: self standardPadding;
			color: Color black);
		addApplicationStyles: ((PHStyle for: #textEntry)
			border: self standardBorder color: Color blue);
		addApplicationStyles: ((PHStyle for: #selection) 
			backgroundColor: (Color r: 0 g: 0 b: 255 alpha: 0.3))