as yet unclassified
mouseMove: anEvent
	| currentPosition label diff newHeight |

	self drag ifTrue: [	
		currentPosition := anEvent cursorPoint y.
		label := self targetLabel.
		diff := currentPosition - (label position y + label height). 
		newHeight := label height + diff.
		
		newHeight <= 10 ifTrue: [^false].
		
		label height: newHeight.
		label cells do: [:cell | cell height: cell height + diff].	
		self position: self position x @ (self position y + diff).
		label changed.
		].