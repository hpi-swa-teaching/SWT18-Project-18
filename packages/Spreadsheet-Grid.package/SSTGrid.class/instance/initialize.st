initialization
initialize
	
	super initialize.
	self 
		width: self defaultSize x;
		height: self defaultSize y;
		color: Color white;
		clickTime: Time now;
		flyweightFactory: SSTCellTypeFactory new;
		data: (SSTGridData newFor: self);
		initializeEdgegrips;
		layoutPolicy: SSTGridLayout new;
		enableDrop: true.
	self selection startDragAt: (self cellAtRowIndex: 1 colIndex: 1).
	self add: self selection