accessing
openRowLabelInSpreadsheet 
	| edgeGrip |

	self width: 30;
		contents: (self index + 1) asString.
	self position: (self grid position x + self colOffset)@(self index * self height + self grid position y + self rowOffset).
	self grid addMorph: self.

	edgeGrip := SpreadsheetRowGrip newOn: self.
	edgeGrip
		width: self width;
		position: self position x  @ (self position y + self height  - (edgeGrip height / 2)). 
	self addMorphFront: edgeGrip.
	
