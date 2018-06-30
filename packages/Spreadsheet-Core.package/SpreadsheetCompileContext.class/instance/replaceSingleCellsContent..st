accessing
replaceSingleCellsContent: aString

	^ SpreadsheetRegexMatcher cellRegex 
		copy: aString
		translatingMatchesUsing: [ :each | 
			(self cellFromString: aString)
				ifNil: [ each ]
				ifNotNilDo: [ :cell |
					('[a-zA-Z]+\d+' asRegex copy: each replacingMatchesWith: '#', cell text)]]