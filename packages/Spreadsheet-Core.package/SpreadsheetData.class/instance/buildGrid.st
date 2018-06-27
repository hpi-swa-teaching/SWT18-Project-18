initialize
buildGrid
	
	(self defaultGridSize x) timesRepeat: [self addRowAfter].
	(self defaultGridSize y) timesRepeat: [self addColumnAfter].