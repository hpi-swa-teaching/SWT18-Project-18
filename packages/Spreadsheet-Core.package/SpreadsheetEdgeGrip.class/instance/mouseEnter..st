as yet unclassified
mouseEnter: anEvent
	
	self color: Color blue.
	self isCursorOverHandle ifTrue:
		[self changed.
		anEvent hand showTemporaryCursor: self resizeCursor]