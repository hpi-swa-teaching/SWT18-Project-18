replace string
replaceCellCollections: aString
	
	^ SpreadsheetRegexMatcher cellCollectionRegex 
		copy: aString translatingMatchesUsing: [ :each |
			"(self cellContentsFrom: each) asString" 
			'{', (String streamContents: [:s | ((self cellsFrom: each) replace: [ :cell | cell identityHashPrintString ]) printOn: s delimiter: '.']), '}']