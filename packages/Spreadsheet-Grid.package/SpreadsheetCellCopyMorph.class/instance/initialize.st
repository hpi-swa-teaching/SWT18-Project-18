initialization
initialize
	super initialize.
	self 
		color: Color white;
		height: self defaultSize y;
		width: self defaultSize x;
		addMorphFront: (Morph new 
			color: self defaultColor;
			height: (self defaultSize y) - 1;
			width: (self defaultSize x) -1;
			position: (self position + (1@1)))