initialization
initialize
	
	super initialize.
	self 
		width: self defaultSize x;
		height: self defaultSize y;
		color: Color white;
		clickTime: Time now;
		layoutPolicy: SpreadsheetGridLayout new;
		flyweightFactory: SpreadsheetFlyweightFactory new.
	(self defaultGridSize x) timesRepeat: [self addRowAfter].
	(self defaultGridSize y) timesRepeat: [self addColumnAfter].
	
	