initialization
initialize
	
	super initialize.
	self 
		width: self defaultSize x;
		height: self defaultSize y;
		color: Color white;
		clickTime: Time now;
		layoutPolicy: SpreadsheetGridLayout new;
		data: (SpreadsheetData for: self)
	