initialization
initialize
	
	super initialize.
	self 
		position: 0@50;
		height: self buttonSize;
		width: self buttonSize;
		color: Color white;
		editor: (SpreadsheetCellTextMorph on: self).
	(1 to: self standardGridSize x) do: [ :a | self addRow ].
	(1 to: self standardGridSize y) do: [ :a | self addColumn ].