label
updateCurrentLabelTop

	|currentBounds|
	currentBounds := self computeDistanceY.
	(currentBounds <= 0) 
		ifTrue: [
			self currentCell: (self currentCell topLabel).
			self addCollection: self currentCell cells]
		ifFalse: [
			self removeCollection: self currentCell cells.
			self currentCell: (self currentCell topLabel)]