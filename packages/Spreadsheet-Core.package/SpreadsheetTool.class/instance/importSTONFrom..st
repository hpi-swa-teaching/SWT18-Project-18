managing files
importSTONFrom: aPath
	
	self submorphs do: [:morph | morph delete].
	self 
		functionWindow: SpreadsheetFunctionWindow new;
		vertical: true;
		withLayout;
		initializeMenu;
		add: (PHPage row
			add: self functionWindow);
		add: (self grid).
	self grid: ((SpreadsheetGrid  newWith: self functionWindow) data: (aPath asReference 
  		  fileStreamDo: [:stream | STON fromStream: stream]); changed)