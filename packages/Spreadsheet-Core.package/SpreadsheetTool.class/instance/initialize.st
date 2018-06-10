initialization
initialize 

	| model |

	model := Model new.
      sysWindow := SystemWindow new.
      sysWindow 
		model: model;
		setLabel: 'Spreadsheet Tool'.
	self 
		functionWindow: SpreadsheetFunctionWindow new;
		grid: (SpreadsheetGrid newWith: functionWindow);
		initializeMenu.
		

      sysWindow 
		addMorph: (PHPage row
			add: self functionWindow);
		addMorph: (self grid).

      