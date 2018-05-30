label
updateCurrentLabelTop

	|currentBounds|
	currentBounds := self computeDistanceY.
	self currentCell: (self currentCell topLabel).
	(currentBounds negative) 
		ifTrue: [
			self addCollection: self currentCell cells]
		ifFalse: [
			self removeCollection: self currentCell cells]