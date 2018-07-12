initialization
addDependencies 
	
	self addFunctionWindow.
	self selection startDragAt: (self cellAtRowIndex: 1 colIndex: 1).
	self add: self selection.