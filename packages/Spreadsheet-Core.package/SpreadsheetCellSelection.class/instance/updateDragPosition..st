as yet unclassified
updateDragPosition: aPoint

	(self currentCell bounds containsPoint: aPoint) ifTrue: [ ^ self ].
	(aPoint x < self  currentCell left) 
		ifTrue: [self updateCurrentCell: #leftCell].
	(aPoint x > self  currentCell right) 
		ifTrue: [self updateCurrentCell: #rightCell ].
	(aPoint y < self  currentCell top) 
		ifTrue: [self updateCurrentCell: #topCell].
	(aPoint y  > self  currentCell bottom) 
		ifTrue: [self updateCurrentCell: #bottomCell ].
	