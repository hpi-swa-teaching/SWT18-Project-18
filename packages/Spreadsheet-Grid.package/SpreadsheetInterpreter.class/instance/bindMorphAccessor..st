binding
bindMorphAccessor: aString

	('morph' asRegex) 
		matchesIn: aString
		do: [ :each | 
			environment bind: each asSymbol to: cell droppedMorph.]