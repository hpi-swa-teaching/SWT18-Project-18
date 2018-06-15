label
updateCurrentLabel: labelDirection alignment: alignment  

	|currentBounds condition|
	currentBounds := self computeDistance: alignment.
	(labelDirection = #successor) 
		ifTrue: [
			condition := (currentBounds >= 0)]
		ifFalse: [
			condition := (currentBounds <= 0)].
	(condition) 
		ifTrue: [
			self currentLabel: (self currentLabel perform: labelDirection).
			self currentCell: self currentLabel cells last.
			self addCollection: self currentLabel cells]
		ifFalse: [
			self removeCollection: self currentLabel cells.
			self currentLabel: (self currentLabel perform: labelDirection).
			self currentCell: self currentLabel cells last].