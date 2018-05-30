label
updateDragPositionLabel: aPoint
	
	(self currentCell class == SpreadsheetColumnLabel) 
		ifTrue: [self updateDragPositionColumnLabel: aPoint].
	(self currentCell class == SpreadsheetRowLabel) 
		ifTrue: [self updateDragPositionRowLabel: aPoint]
		ifFalse: [ ^ self ].
	self updateDragPositionLabel: aPoint.