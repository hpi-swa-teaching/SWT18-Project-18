label
updateCurrentLabelRight

	|currentBounds|
	currentBounds := self computeDistanceX.
	(currentBounds >= 0) 
		ifTrue: [
			self currentLabel: (self currentLabel rightLabel).
			self addCollection: self currentLabel cells]
		ifFalse: [
			self removeCollection: self currentLabel cells.
			self currentLabel: (self currentLabel rightLabel)]