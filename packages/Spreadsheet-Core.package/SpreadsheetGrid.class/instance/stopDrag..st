event handling
stopDrag: evt

	self selection stopDrag: evt.
	self dragging: false.
