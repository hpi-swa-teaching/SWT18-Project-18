accessing
replaceSingleCellsAccessor: aString

	^ SpreadsheetRegexMatcher cellAccessorRegex 
		copy: aString
		translatingMatchesUsing: [ :each | 
			| string  |
			
			string := ('[a-zA-Z]+\d+' asRegex matchesIn: aString) first.
			(self cellFromString: each)
				ifNil: [ each ]
				ifNotNilDo: [ :cell |
					('[a-zA-Z]+\d+\s+asCell' asRegex copy: each replacingMatchesWith: 'self cellFromString: ', '#', each)]]