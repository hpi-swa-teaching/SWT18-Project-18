event handling
stopMove: evt

	| cell | 
	
	cell := (self cellAt: evt position).
	self removeMorph: self targetCell.
	self targetCell: nil.
	cell text: self editor cell text.
	cell calcRepresentation: self editor cell calcRepresentation.
	self editCell: (self cellAt: evt position) event: evt