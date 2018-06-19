initialization
addCopyMorph 

	self copyMorph: (SpreadsheetCellCopyMorph on: self).
	self addMorphFront: self copyMorph.