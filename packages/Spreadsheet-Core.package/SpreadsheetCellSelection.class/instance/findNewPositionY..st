cell
findNewPositionY: aPoint

	(aPoint y between: self currentCell top and: self currentCell bottom ) ifTrue: [ ^ self ].
	(aPoint y > self currentCell bottom)
		ifTrue: [ self currentCell: self currentCell bottomCell  ]
		ifFalse: [ self currentCell: self currentCell topCell ].
	self findNewPositionY: aPoint.