event handling
mouseMove: anEvent
	| currentPosition |

	self drag ifTrue: [	
		currentPosition := anEvent cursorPoint y.
		(currentPosition -  self label position y > 10)
		ifFalse: [
			self position: self label position + ( 0@5).
			self moveLine position: self label position + (0 @ self height) + (0@5)]
		ifTrue: [
			self position: self position x @ currentPosition.
			self moveLine position: (self moveLine position x) @ (currentPosition + self height)].
		self moveLine changed;comeToFront.
		self changed;comeToFront.].