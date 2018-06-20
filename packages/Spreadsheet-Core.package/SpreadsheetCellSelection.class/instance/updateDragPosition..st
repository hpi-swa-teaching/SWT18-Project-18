cell
updateDragPosition: aPoint
  
  	self findNewPositionX: aPoint.
 	self findNewPositionY: aPoint.
	(self startCell = self currentCell) ifFalse: [ self dragging: true. self startSelection ]. "Necessary because #startDrag: also reacts to doubleClick"
	self adjustSize.