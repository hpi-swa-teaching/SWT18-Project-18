as yet unclassified
mouseEnter: anEvent

	self isCursorOverHandle ifTrue:
		[self changed.
		anEvent hand showTemporaryCursor: self resizeCursor]