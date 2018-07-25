as yet unclassified
updatePosition: aPosition

	(self currentLabel class == SSTColumnLabel)
		ifTrue: [
			(aPosition x < (self selection grid position x + self selection grid defaultSize x)) ifTrue: [^self].
			self updateDragPosition: aPosition alignment: #x].
	(self currentLabel class == SSTRowLabel)
		ifTrue: [
			(aPosition y < (self selection grid position y + self selection grid defaultSize y)) ifTrue: [^self].
			self updateDragPosition: aPosition alignment: #y].
	self selection adjustSize: self selectionBounds.
