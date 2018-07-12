initialization
initialize
	
	super initialize.
	self 
		width: self defaultSize x;
		height: self defaultSize y;
		color: Color white;
		clickTime: Time now;
		flyweightFactory: SpreadsheetFlyweightFactory new;
		data: (SpreadsheetData newFor: self);
		initializeEdgegrips;
		layoutPolicy: SpreadsheetGridLayout new;
		interpreter: (SpreadsheetInterpreter on: self);
		enableDrop: true.
	self selection startDragAt: (self cellAtRowIndex: 1 colIndex: 1).
	self add: self selection