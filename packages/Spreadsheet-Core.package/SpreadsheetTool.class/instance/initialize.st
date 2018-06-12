initialization
initialize 

	super initialize.
	self 
		functionWindow: SpreadsheetFunctionWindow new;
		grid: (SpreadsheetGrid newWith: functionWindow);
		vertical: true;
		withLayout;
		initializeMenu;
		add: (PHPage row
			add: self functionWindow);
		add: (self grid).
      