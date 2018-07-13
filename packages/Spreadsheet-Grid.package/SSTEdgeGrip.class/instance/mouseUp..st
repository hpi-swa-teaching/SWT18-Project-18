event handling
mouseUp: anEvent
	
	self moveLine delete.
	(self isCursorOverHandle: anEvent) ifFalse: [ anEvent hand showTemporaryCursor: nil ].