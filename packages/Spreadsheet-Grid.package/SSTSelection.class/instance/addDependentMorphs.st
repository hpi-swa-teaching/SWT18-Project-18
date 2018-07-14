handle submorphs
addDependentMorphs

	self copyMorph ifNotNil: [ ^ self ].
	self 
		addMoveMorphs;
		addCopyMorph.