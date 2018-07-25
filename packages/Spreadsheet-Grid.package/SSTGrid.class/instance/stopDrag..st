event handling
stopDrag: evt

	self selection finishWith: evt.
	self dragging: false.
