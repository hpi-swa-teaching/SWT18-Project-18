initialize
buildGrid
	
	(self defaultGridSize x) timesRepeat: [self addRow].
	(self defaultGridSize y) timesRepeat: [self addColumn].