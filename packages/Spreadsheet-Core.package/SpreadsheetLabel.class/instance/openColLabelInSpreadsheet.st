accessing
openColLabelInSpreadsheet 

	self grid addMorph: self.
	self position: (self column index * self width + self grid position x + self rowOffset)@(self grid position y + self colOffset).
	self addEdgeGrips.