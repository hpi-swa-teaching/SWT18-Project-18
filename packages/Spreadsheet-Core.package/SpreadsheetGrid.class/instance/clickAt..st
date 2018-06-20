event handling
clickAt: aPoint
	| point |
	((aPoint x < self columns first left) and: [aPoint y > self rows first top]) ifTrue: [
		self startDragAt: (self rowLabelAt: aPoint).
		^ self].
	((aPoint x > self columns first left) and: [aPoint y < self rows first top]) ifTrue: [
		self startDragAt: (self columnLabelAt: aPoint).
		^ self].
	((aPoint x < self columns first left) and: [aPoint y < self rows first top]) ifTrue: [
		self selectAll.
		^ self].
	point := self findColumnAndRowIndex: aPoint.
	self startDragAt: (self cellAtRowIndex: point y colIndex: point x). 