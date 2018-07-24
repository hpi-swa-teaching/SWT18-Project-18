initialization
createDefaultMorph
	^ Morph new 
			color: self defaultColor;
			height: (self defaultSize y) - 1;
			width: (self defaultSize x) -1;
			position: (self position + (1@1))