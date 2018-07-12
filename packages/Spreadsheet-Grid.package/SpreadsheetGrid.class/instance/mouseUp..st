event handling
mouseUp: evt
	
	self layoutPolicy: SpreadsheetGridLayout new.
	self dragging ifTrue: [self stopDrag: evt].