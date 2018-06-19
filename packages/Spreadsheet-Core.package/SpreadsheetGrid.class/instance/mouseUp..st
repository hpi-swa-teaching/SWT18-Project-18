event handling
mouseUp: evt
	
	self dragging ifTrue: [self stopDrag: evt].