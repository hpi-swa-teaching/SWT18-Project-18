managing files
newFile
	self submorphs do: [:morph | morph delete].
	self 
		functionWindow: SpreadsheetFunctionWindow new;
		grid: (SpreadsheetGrid newWith: functionWindow);
		vertical: true;
		withLayout;
		initializeMenu;
		add: (PHPage row
			add: self functionWindow);
		add: (self grid).