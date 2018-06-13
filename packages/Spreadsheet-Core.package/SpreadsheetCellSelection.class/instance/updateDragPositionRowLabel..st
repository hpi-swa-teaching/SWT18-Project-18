label
updateDragPositionRowLabel: aPoint
	
	((aPoint y) between: self currentLabel top and: self currentLabel bottom) ifTrue: [^ self ].
	(aPoint y > self currentLabel bottom)
		 ifTrue: [ 
			self updateCurrentLabelBottom
		]
		ifFalse: [
			self updateCurrentLabelTop].
	self updateDragPositionRowLabel: aPoint
		
	
			