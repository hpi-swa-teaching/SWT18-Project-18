accessing
openRowLabelInSpreadsheet 

	self grid addMorph: self.
	self position: (self grid position x + self colOffset)@(self index - 1 * self height + self grid position y + self rowOffset).
	self addEdgeGrips.