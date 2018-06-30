accessing
replaceCellContentCollections: aString

	^ SpreadsheetRegexMatcher cellCollectionRegex 
		copy: aString translatingMatchesUsing: [ :each |
			| string |
			
			string := ('[a-zA-Z]+\d+\:[a-zA-Z]+\d+' asRegex matchesIn: each) first.
			String newFrom: ('(', 'self cellContentsFrom: ', '#', string, ')').]