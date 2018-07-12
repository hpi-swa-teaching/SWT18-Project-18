cell moving
stopMove: evt

	| cell | 
	
	cell := (self grid cellAt: evt position).
	self grid removeMorph: self targetCell.
	self targetCell: nil.
	cell text: self selectedCell text.
	cell calcRepresentation: self selectedCell calcRepresentation.
	(cell ~= self selectedCell) ifTrue: [ self selectedCell reset ].
	self editor ifNotNilDo: [ :editor | editor reset].
	self fullMoveTo: cell.