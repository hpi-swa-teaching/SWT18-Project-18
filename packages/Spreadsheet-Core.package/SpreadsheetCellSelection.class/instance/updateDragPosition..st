cell dragging
updateDragPosition: aPoint
  
	(self startLabel notNil) 
		ifTrue: [ self updateDragPositionLabel: aPoint]
		ifFalse: [ self updateDragPositionCell: aPoint]