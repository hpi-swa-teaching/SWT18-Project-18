event handling
mouseUp: anEvent
	| currentPosition diff newWidth |
	
	super mouseUp: anEvent.
	self drag ifTrue: [	
		currentPosition := self moveLine position x.
		diff := currentPosition - (self label position x + self label width). 
		newWidth := self label width + diff.
		self label width: newWidth.
		self drag: false.
		self label changed].