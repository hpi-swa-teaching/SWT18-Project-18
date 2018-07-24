label dragging
updateDragPositionLabel: aPoint

	(self currentLabel class == SSTColumnLabel)
		ifTrue: [
			(aPoint x < (self grid position x + self grid defaultSize x)) ifTrue: [^self].
			self updateDragPosition: aPoint alignment: #x].
	(self currentLabel class == SSTRowLabel)
		ifTrue: [
			(aPoint y < (self grid position y + self grid defaultSize y)) ifTrue: [^self].
			self updateDragPosition: aPoint alignment: #y].
	(self startLabel ~= self currentLabel and: [self dragging = false]) ifTrue: [ 
		self dragging: true.
		self removeDependentMorphs ].
	self adjustSize.
