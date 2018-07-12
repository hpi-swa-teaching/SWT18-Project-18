binding
bindGridAccessor: aString

	('grid' asRegex) 
		matchesIn: aString
		do: [ :each | 
			environment bind: each asSymbol to: grid.].