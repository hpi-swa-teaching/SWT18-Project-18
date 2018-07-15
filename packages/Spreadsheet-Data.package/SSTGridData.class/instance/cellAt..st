accessing cells
cellAt: aPosition
	| point |
	
	(self innerGridBounds containsPoint: aPosition) ifFalse: [ ^ nil ].
	point := self findColumnAndRowIndex: aPosition.
	^ self cellAtRowIndex: point y colIndex: point x. 