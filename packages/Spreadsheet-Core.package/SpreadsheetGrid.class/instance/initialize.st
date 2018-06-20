initialization
initialize
	
	super initialize.
	self 
		width: self defaultSize x;
		height: self defaultSize y;
		color: Color white;
		editor: (SpreadsheetCellTextMorph on: self);
		layoutPolicy: SpreadsheetGridLayout new.
	(self standardGridSize x) timesRepeat: [self addRowAfter].
	(self standardGridSize y) timesRepeat: [self addColumnAfter].
	
	