accessing cells
cellAt: aPosition
	| point |
	
	point := self findColumnAndRowIndex: aPosition.
	^ self cellAtRowIndex: point y colIndex: point x