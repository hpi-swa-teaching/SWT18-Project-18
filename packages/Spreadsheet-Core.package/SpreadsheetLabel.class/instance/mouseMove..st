event handling
mouseMove: evt

	self dragging ifTrue: [
		self grid updateDragPositionLabel: evt position]
	