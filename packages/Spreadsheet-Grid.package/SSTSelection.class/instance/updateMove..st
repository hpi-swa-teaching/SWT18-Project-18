cell moving
updateMove: evt
	
	| cell |
	
	cell := self grid cellAt: evt position.
	cell ifNil: [ ^ self ].
	self targetCell: cell.
	self targetMorph bounds: cell bounds.