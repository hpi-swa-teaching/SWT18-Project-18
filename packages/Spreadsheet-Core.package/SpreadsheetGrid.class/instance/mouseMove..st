event handling
mouseMove: evt

	self dragging ifTrue: [self updateDragPosition: evt position]