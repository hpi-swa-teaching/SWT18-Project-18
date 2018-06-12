label
updateDragPositionColumnLabel: aPoint
	
	((aPoint x) between: self currentCell left and: self currentCell right) ifTrue: [ ^ self ].
	(aPoint x > self currentCell right)
		 ifTrue: [ 
			self updateCurrentLabelRight
		]
		ifFalse: [
			self updateCurrentLabelLeft].
	self updateDragPositionColumnLabel: aPoint.
	
			