event handling
mouseEnter: anEvent
	
	self color: Color blue.
	self isCursorOverHandle ifTrue:
		[self changed.
		anEvent hand showTemporaryCursor: self resizeCursor]