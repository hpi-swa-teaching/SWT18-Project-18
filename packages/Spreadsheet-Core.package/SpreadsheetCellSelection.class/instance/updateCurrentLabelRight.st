label
updateCurrentLabelRight

	|currentBounds|
	currentBounds := self computeDistanceX.
	(currentBounds positive) 
		ifTrue: [
			self currentCell: (self currentCell rightLabel).
			self addCollection: self currentCell cells]
		ifFalse: [
			self removeCollection: self currentCell cells.
			self currentCell: (self currentCell rightLabel)]