as yet unclassified
mouseUp: anEvent
	| currentPosition label diff newWidth |
	
	super mouseUp: anEvent.
	self drag ifTrue: [	
		currentPosition := self moveLine position x.
		label := self targetLabel.
		diff := currentPosition - (label position x + label width). 
		newWidth := label width + diff.
		label width: newWidth.
		label changed].