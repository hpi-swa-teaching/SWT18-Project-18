label
updateDragPositionRowLabel: aPoint
	
	((aPoint y) between: self currentCell top and: self currentCell bottom).
	(aPoint x > self currentCell bottom)
		 ifTrue: [ 
			self updateCurrentLabelBottom
		]
		ifFalse: [
			self updateCurrentLabelTop].
		
	
			