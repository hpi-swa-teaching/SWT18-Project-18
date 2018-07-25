cell moving
stopMove: evt

	| cellTemp | 
	
	cellTemp := self targetCell.
	self grid removeMorph: self targetMorph.
	self targetMorph: nil.
	cellTemp text: self selectedCell text.
	cellTemp calcRepresentation: self selectedCell calcRepresentation.
	(cellTemp ~= self selectedCell) ifTrue: [ self selectedCell reset ].
	self editor ifNotNilDo: [ :editor | editor reset].
	self fullMoveTo: cellTemp.