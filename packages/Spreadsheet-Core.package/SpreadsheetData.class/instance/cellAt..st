grid access
cellAt: aPoint
	| point |
	point := self findColumnAndRowIndex: aPoint.
	^ self cellAtRowIndex: point y colIndex: point x. 