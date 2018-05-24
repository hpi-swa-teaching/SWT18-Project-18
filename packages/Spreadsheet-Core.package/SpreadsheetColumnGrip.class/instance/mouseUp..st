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
		"self position: self position x + diff @ self position y."
		label changed].
	"self position: (self targetLabel right - (self width / 2)) @ self targetLabel position y."