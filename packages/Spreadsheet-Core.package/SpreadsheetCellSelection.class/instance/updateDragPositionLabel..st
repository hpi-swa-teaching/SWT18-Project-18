label
updateDragPositionLabel: aPoint
	
	(self currentCell class == SpreadsheetColumnLabel) 
		ifTrue: [
			(aPoint x < self grid markAllLabel right) ifTrue: [^self].
			self updateDragPositionColumnLabel: aPoint].
	(self currentCell class == SpreadsheetRowLabel) 
		ifTrue: [
			(aPoint y < self grid markAllLabel bottom) ifTrue: [^self].
			self updateDragPositionRowLabel: aPoint]
		ifFalse: [ ^ self ].