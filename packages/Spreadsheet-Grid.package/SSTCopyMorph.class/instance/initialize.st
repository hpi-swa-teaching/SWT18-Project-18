initialization
initialize
	super initialize.
	self 
		color: Color white;
		height: self defaultSize y;
		width: self defaultSize x;
		addMorphFront: self createDefaultMorph. 