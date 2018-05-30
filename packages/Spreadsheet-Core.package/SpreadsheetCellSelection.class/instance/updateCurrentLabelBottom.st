label
updateCurrentLabelBottom

	|currentBounds|
	currentBounds := self computeDistanceY.
	self currentCell: (self currentCell bottomLabel).
	(currentBounds positive) 
		ifTrue: [
			self addCollection: self currentCell cells]
		ifFalse: [
			self removeCollection: self currentCell cells].