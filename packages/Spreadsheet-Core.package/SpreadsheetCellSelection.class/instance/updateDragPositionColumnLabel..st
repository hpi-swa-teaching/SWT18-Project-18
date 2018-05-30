label
updateDragPositionColumnLabel: aPoint
	
	((aPoint x) between: self currentCell left and: currentCell right) ifTrue: [ ^ nil ].
	(aPoint x > self currentCell right)
		 ifTrue: [ 
			self updateCurrentLabelRight
		]
		ifFalse: [
			self updateCurrentLabelLeft].
		
	
			