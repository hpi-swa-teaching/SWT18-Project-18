as yet unclassified
openInSpreadsheet 

	self width: 30;
		contents: (self index + 1) asString.
	"self position: (self grid position x + self colOffset)@((self index)* self height + self grid position y + self rowOffset)."
	self position: (self grid markAllLabel position x) @ ( self grid bottom).
	self grid addMorph: self.

	self edgeGrip: (SpreadsheetRowGrip newFor: self on: self grid).
	self edgeGrip
		width: self width;
		position: self position x  @ (self bottom  - (edgeGrip height)).
	self grid addMorphFront: edgeGrip.