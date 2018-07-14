handle submorphs
removeDependentMorphs

	self copyMorph delete.
	self moveMorphs do: #delete.