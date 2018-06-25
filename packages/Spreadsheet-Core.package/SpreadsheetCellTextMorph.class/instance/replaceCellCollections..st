calculateResult
replaceCellCollections: aString
	
	^ SpreadsheetRegexMatcher cellCollectionRegex 
		copy: aString translatingMatchesUsing: [ :each |
			'{', (String streamContents: [:s | (self cellContentsFrom: each) asStringOn: s delimiter: '. ']), '}']