as yet unclassified
openInSpreadsheet 

	self 
		width: 30;
		updateLabelText.
	self position: (self data grid position x) @ ( self data grid bottom).

	self edgeGrip: (SpreadsheetRowGrip newFor: self on: self data grid).
	self edgeGrip
		width: self width;
		position: self position x  @ (self bottom  - (edgeGrip height)).
	self data grid addMorphFront: edgeGrip.