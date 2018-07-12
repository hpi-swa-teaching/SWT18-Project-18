initialization
initialize 

	super initialize.
	self 
		grid: SpreadsheetGrid new;
		functionWindow: (SpreadsheetFunctionWindow for: self grid);
		vertical: true;
		withLayout;
		initializeMenu;
		add: (PHPage row
			add: self functionWindow);
		add: (self grid).
      self grid attachToEditor: self functionWindow