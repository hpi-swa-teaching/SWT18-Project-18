initialization
initialize
	
	super initialize.
	self functionWindow: SpreadsheetFunctionWindow new;
		addMorph: self functionWindow;
		grid: (SpreadsheetGrid newWith: functionWindow);
		addMorph: self grid.
