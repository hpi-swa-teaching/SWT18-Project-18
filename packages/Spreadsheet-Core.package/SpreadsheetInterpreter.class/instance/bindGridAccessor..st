binding
bindGridAccessor: aString

	('grid' asRegex) 
		matchesIn: aString
		do: [ :each | 
			| string |
			
			string := ('grid' asRegex matchesIn: each) first.
			environment bind: string asSymbol to: grid.].
	^ aString