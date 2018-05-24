as yet unclassified
mouseUp: anEvent
	| currentPosition label diff newHeight |
	
	super mouseUp: anEvent.
	self drag ifTrue: [	
		currentPosition := self moveLine position y.
		label := self targetLabel.
		diff := currentPosition - (label position y + label height). 
		newHeight := label height + diff.
		label height: newHeight.
		label cells do: [:cell | cell height: cell height + diff].
		label changed].
	