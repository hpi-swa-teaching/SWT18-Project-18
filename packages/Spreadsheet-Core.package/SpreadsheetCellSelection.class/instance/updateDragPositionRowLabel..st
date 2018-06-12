label
updateDragPositionRowLabel: aPoint
	
	((aPoint y) between: self currentCell top and: self currentCell bottom) ifTrue: [^ self ].
	(aPoint y > self currentCell bottom)
		 ifTrue: [ 
			self updateCurrentLabelBottom
		]
		ifFalse: [
			self updateCurrentLabelTop].
	self updateDragPositionRowLabel: aPoint
		
	
			