label
updateDragPositionLabel: aPoint

	(self currentLabel class == SpreadsheetColumnLabel)
		ifTrue: [
			(aPoint x < self grid markAllLabel right) ifTrue: [^self].
			self updateDragPosition: aPoint alignment: #x].
	(self currentLabel class == SpreadsheetRowLabel)
		ifTrue: [
			(aPoint y < self grid markAllLabel bottom) ifTrue: [^self].
			self updateDragPosition: aPoint alignment: #y].
	self adjustSize.
