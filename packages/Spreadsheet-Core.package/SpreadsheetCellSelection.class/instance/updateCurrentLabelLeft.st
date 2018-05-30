label
updateCurrentLabelLeft

	|currentBounds|
	currentBounds := self computeDistanceX.
	(currentBounds negative) 
		ifTrue: [
			self currentCell: (self currentCell leftLabel).
			self addCollection: self currentCell cells]
		ifFalse: [
			self removeCollection: self currentCell cells.
			self currentCell: (self currentCell leftLabel).]