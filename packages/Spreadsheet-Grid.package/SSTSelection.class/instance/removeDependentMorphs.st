handle submorphs
removeDependentMorphs

	self copyMorph ifNil: [ ^ self ].
	self copyMorph delete.
	self moveMorphs do: #delete.
	self copyMorph: nil.
	self moveMorphs: nil.