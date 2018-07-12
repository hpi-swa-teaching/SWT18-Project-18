initialization
addCopyMorph 

	self copyMorph: (SSTCopyMorph on: self).
	self addMorphFront: self copyMorph.