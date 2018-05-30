initialization
initialize
	
	super initialize.
	self 
		position: 0@50;
		color: Color white;
		editor: (SpreadsheetCellTextMorph on: self);
		markAllLabel: (SpreadsheetMarkAllLabel on: self).
	(1 to: self standardGridSize x) do: [ :a | self addRow ].
	(1 to: self standardGridSize y) do: [ :a | self addColumn ].
	self layoutPolicy: SpreadsheetGridLayout new.