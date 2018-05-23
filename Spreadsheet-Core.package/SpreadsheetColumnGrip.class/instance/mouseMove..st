as yet unclassified
mouseMove: anEvent
	| currentPosition label diff newWidth |

	self drag ifTrue: [	
		currentPosition := anEvent cursorPoint x.
		label := self targetLabel.
		diff := currentPosition - (label position x + label width). 
		newWidth := label width + diff.
		newWidth <= 10 ifTrue: [^false].
		label updateWidth: newWidth.
		label cells do: [:cell | cell width: cell width + diff].
		self position: self position x + diff @ self position y.
		label changed].