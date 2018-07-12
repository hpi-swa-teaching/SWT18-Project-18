event handling
mouseUp: evt
	
	self layoutPolicy: SSTGridLayout new.
	self dragging ifTrue: [self stopDrag: evt].