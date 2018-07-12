as yet unclassified
mouseUp: anEvent
	| currentPosition diff newHeight |
	
	super mouseUp: anEvent.
	self drag ifTrue: [	
		currentPosition := self moveLine position y.
		diff := currentPosition - (self label position y + self label height). 
		newHeight := self label height + diff.
		self label height: newHeight.
		self drag: false.
		label changed].
	