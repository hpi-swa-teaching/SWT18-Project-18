accessing
replaceCellCollectionAccessors: aString

	^ SpreadsheetRegexMatcher cellCollectionAccessorRegex 
		copy: aString translatingMatchesUsing: [ :each |
			| string |
			
			string := ('[a-zA-Z]+\d+\:[a-zA-Z]+\d+' asRegex matchesIn: each) first.
			'(','self cellsFrom: ' , ' #', string, ')']