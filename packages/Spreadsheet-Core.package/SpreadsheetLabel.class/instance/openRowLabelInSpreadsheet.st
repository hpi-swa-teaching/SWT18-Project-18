accessing
openRowLabelInSpreadsheet 

	self grid addMorph: self.
	self position: (self grid position x + self colOffset)@(self row index * self height + self grid position y + self rowOffset).
	self addEdgeGrips.