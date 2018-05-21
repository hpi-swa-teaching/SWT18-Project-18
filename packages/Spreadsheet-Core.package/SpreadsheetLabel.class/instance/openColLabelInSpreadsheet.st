accessing
openColLabelInSpreadsheet 

	self grid addMorph: self.
	self position: (self index - 1  * self width + self grid position x + self rowOffset)@(self grid position y + 10).
	self addEdgeGrips.