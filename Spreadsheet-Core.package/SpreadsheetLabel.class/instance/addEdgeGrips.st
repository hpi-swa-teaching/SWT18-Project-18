initialization
addEdgeGrips 

	self type == #row ifTrue: [
		self addMorphFront: (SpreadsheetRowGrip newOn: self)].
	self type == #column ifTrue: [
		self addMorphFront: (SpreadsheetColumnGrip newOn: self)].