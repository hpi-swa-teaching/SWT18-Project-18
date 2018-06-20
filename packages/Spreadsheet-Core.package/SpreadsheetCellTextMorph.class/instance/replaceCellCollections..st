calculateResult
replaceCellCollections: aString
	
	^ SpreadsheetRegexMatcher cellCollectionRegex 
		copy: aString translatingMatchesUsing: [ :each |
			Transcript show: (self cellContentsFrom: each);cr.
			'{', (String streamContents: [:s | (self cellContentsFrom: each) asStringOn: s delimiter: '. ']), '}']