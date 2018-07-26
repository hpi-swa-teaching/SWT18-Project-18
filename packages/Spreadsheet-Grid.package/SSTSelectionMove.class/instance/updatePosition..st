as yet unclassified
updatePosition: aPosition

	| cell newBounds |
	
	cell := (self selection grid cellAt: aPosition).
	cell := (self cellFrom:cell with: self cellOffset).
	cell ifNil: [ ^ self ].
	
	newBounds := ( cell position extent: self targetMorph extent).
	(self selection grid innerGridBounds containsRect: newBounds) ifFalse: [ ^ self ].
	self targetMorph bounds: newBounds.
	self grabbedCell: cell.