event handling
mouseMove: anEvent
	| currentPosition |

	self drag ifTrue: [	
		currentPosition := anEvent cursorPoint x.
		(currentPosition -  self label position x > 10) 
		ifFalse: [
			self position: self label position + (5@0).
			self moveLine position: self label position + (self width @ 0) + (5@0)]
		ifTrue: [
			self position: currentPosition @ self position y.
			self moveLine position: currentPosition + self width @  (self moveLine position y)].
		self moveLine changed; comeToFront.
		self changed; comeToFront]