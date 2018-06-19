event handling
mouseUp: evt

	self dragging ifTrue: [
		self grid stopDragLabel: evt].
	self dragging: false.