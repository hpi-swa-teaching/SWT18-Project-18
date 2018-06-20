event handling
startDragAt: anObject

	self selection startDragAt: anObject.
	self addMorphBack: self selection.
	self dragging: true.