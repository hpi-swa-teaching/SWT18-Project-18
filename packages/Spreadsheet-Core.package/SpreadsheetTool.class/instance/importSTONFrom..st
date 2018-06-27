managing files
importSTONFrom: aPath
	
	self submorphs do: [:morph | morph delete].
	self 
		functionWindow: SpreadsheetFunctionWindow new;
		grid: (aPath asReference 
  		  fileStreamDo: [:stream | STON fromStream: stream]);
		vertical: true;
		withLayout;
		initializeMenu;
		add: (PHPage row
			add: self functionWindow);
		add: (self grid).