initialization
initialize
	
	super initialize.
	self 
		width: self defaultSize x;
		height: self defaultSize y;
		color: Color white;
		clickTime: Time now;
		data: (SpreadsheetData newFor: self);
		initializeEdgegrips;
		layoutPolicy: SpreadsheetGridLayout new;
		interpreter: (SpreadsheetInterpreter on: self)
	