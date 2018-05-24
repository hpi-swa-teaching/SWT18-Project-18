as yet unclassified
mouseMove: anEvent
	| currentPosition |

	self drag ifTrue: [	
		currentPosition := anEvent cursorPoint y.
		(currentPosition -  self targetLabel position y > 10) ifFalse: [^self ].
		self position: self position x @ currentPosition.
		self moveLine position: (self moveLine position x) @ currentPosition.
		self moveLine changed;comeToFront.].