initialization
initialize

	super initialize.
	self 
		color: Color white;
		borderWidth: 0;
		height: self standardHeight;
		width: self standardWidth;
		setPosition;
		contentMorph: (StringMorph new
			color: Color black;
			position: 2@4;
			height: self height - 4;
			width: self width - 2;
			contents: '').
	self addMorph: self contentMorph
