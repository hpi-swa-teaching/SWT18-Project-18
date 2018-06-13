label
updateDragPositionColumnLabel: aPoint
	
	((aPoint x) between: self currentLabel left and: self currentLabel right) ifTrue: [ ^ self ].
	(aPoint x > self currentLabel right)
		 ifTrue: [ 
			self updateCurrentLabelRight
		]
		ifFalse: [
			self updateCurrentLabelLeft].
	self updateDragPositionColumnLabel: aPoint.
	
			