event handling
mouseMove: evt

	self dragging 
		ifTrue: [	self grid updateDragPosition: evt position]