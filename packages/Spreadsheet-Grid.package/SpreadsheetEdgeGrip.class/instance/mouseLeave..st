event handling
mouseLeave: anEvent
	
	self color: Color transparent.
	self isCursorOverHandle ifTrue:
		[self changed.
		anEvent hand showTemporaryCursor: nil]