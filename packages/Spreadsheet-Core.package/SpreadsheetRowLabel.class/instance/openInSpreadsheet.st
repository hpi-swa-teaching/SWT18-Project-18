as yet unclassified
openInSpreadsheet 

	self width: 30;
		updateLabelText.
	self position: (self grid markAllLabel position x) @ ( self grid bottom).
	self grid addMorph: self.

	self edgeGrip: (SpreadsheetRowGrip newFor: self on: self grid).
	self edgeGrip
		width: self width;
		position: self position x  @ (self bottom  - (edgeGrip height)).
	self grid addMorphFront: edgeGrip.