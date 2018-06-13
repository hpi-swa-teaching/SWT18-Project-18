label
updateCurrentLabelLeft

	|currentBounds|
	currentBounds := self computeDistanceX.
	(currentBounds <= 0) 
		ifTrue: [
			self currentLabel: (self currentLabel leftLabel).
			self addCollection: self currentLabel cells]
		ifFalse: [
			self removeCollection: self currentLabel cells.
			self currentLabel: (self currentLabel leftLabel).]