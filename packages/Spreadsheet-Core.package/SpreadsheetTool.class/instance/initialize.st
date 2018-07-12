initialization
initialize 

	super initialize.
	self 
		grid: SSTGrid new;
		functionWindow: (SSTFunctionWindow for: self grid);
		vertical: true;
		withLayout;
		initializeMenu;
		add: (PHPage row
			add: self functionWindow);
		add: (self grid).
      self grid attachToEditor: self functionWindow