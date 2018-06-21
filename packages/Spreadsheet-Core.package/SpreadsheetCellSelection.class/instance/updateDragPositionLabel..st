label dragging
updateDragPositionLabel: aPoint

	(self currentLabel class == SpreadsheetColumnLabel)
		ifTrue: [
			(aPoint x < (self grid position x + self grid defaultSize x)) ifTrue: [^self].
			self updateDragPosition: aPoint alignment: #x].
	(self currentLabel class == SpreadsheetRowLabel)
		ifTrue: [
			(aPoint y < (self grid position y + self grid defaultSize y)) ifTrue: [^self].
			self updateDragPosition: aPoint alignment: #y].
	self adjustSize.
