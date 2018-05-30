as yet unclassified
mouseUp: anEvent
	| currentPosition label diff newWidth |
	
	super mouseUp: anEvent.
	self drag ifTrue: [	
		currentPosition := self moveLine position x.
		label := self targetLabel.
		diff := currentPosition - (label position x + label width). 
		newWidth := label width + diff.
		label updateWidth: newWidth.
		label cells do: [:cell | cell width: cell width + diff].
		label changed].