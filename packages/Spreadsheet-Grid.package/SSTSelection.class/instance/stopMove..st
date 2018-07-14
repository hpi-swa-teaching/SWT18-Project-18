cell moving
stopMove: evt

	| cell | 
	
	cell := self targetCell.
	self grid removeMorph: self targetMorph.
	self targetMorph: nil.
	cell text: self selectedCell text.
	cell calcRepresentation: self selectedCell calcRepresentation.
	(cell ~= self selectedCell) ifTrue: [ self selectedCell reset ].
	self editor ifNotNilDo: [ :editor | editor reset].
	self fullMoveTo: cell.