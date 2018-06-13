label
updateCurrentLabelBottom

	|currentBounds|
	currentBounds := self computeDistanceY.
	(currentBounds >= 0) 
		ifTrue: [
			self currentLabel: (self currentLabel bottomLabel).
			self addCollection: self currentLabel cells]
		ifFalse: [
			self removeCollection: self currentLabel cells.
			self currentLabel: (self currentLabel bottomLabel)].