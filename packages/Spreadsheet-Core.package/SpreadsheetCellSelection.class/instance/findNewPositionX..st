cell dragging
findNewPositionX: aPoint

	(aPoint x between: self currentCell left and: self currentCell right ) ifTrue: [ ^ self ].
	(aPoint x > self currentCell right)
		ifTrue: [ self currentCell: self currentCell rightCell ]
		ifFalse: [ self currentCell: self currentCell leftCell ].
	self findNewPositionX: aPoint.