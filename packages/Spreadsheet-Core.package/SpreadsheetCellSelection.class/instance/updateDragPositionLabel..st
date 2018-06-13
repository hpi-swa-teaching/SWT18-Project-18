label
updateDragPositionLabel: aPoint
	
	(self currentLabel class == SpreadsheetColumnLabel) 
		ifTrue: [
			(aPoint x < self grid markAllLabel right) ifTrue: [^self].
			self updateDragPositionColumnLabel: aPoint].
	(self currentLabel class == SpreadsheetRowLabel) 
		ifTrue: [
			(aPoint y < self grid markAllLabel bottom) ifTrue: [^self].
			self updateDragPositionRowLabel: aPoint]
		ifFalse: [ ^ self ].