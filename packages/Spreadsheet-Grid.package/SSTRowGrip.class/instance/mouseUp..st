event handling
mouseUp: anEvent
	| diff |
	
	super mouseUp: anEvent.
	self drag ifTrue: [	
		diff := (self moveLine position y)  - (self label position y + self label height). 
		self label height: self label height + diff.
		self drag: false.
		label changed].
	