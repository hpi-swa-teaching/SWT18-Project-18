as yet unclassified
openInSpreadsheet 
	
	self updateLabelText.
	"self position: ((self index) * self width + self grid position x + self rowOffset)@(self grid position y + self colOffset)."
	self position: (self grid right) @ (self grid position y).
	
	self edgeGrip: (SpreadsheetColumnGrip newFor: self on: self grid).
	self edgeGrip
		height: self height;
		position: (self right - (edgeGrip width)) @ self position y.
	self grid addMorphFront: edgeGrip.