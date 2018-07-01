binding
bindCellAccessor: aString

	('cell' asRegex) 
		matchesIn: aString
		do: [ :each | 
			| string |
			
			string := ('cell' asRegex matchesIn: each) first.
			environment bind: string asSymbol to: cell.].
	^ aString