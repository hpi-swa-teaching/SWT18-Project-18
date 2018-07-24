handle submorphs
updateDependentMorphs 

	self copyMorph ifNotNil: [
		self updateMoveMorphs.
		self updateCopyMorph.]