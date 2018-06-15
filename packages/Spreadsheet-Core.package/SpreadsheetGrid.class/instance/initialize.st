initialization
initialize
	
	super initialize.
	self 
		position: 0@50;
		color: Color white;
		editor: (SpreadsheetCellTextMorph on: self);
		layoutPolicy: SpreadsheetGridLayout new;
		markAllLabel: (SpreadsheetMarkAllLabel on: self).
	(self standardGridSize x) timesRepeat: [self addRowAfter].
	(self standardGridSize y) timesRepeat: [self addColumnAfter].
	self editor replaceCell: (self cellAtRowIndex: 1 colIndex: 1).
	
	