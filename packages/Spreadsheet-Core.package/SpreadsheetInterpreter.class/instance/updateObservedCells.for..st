replace string
updateObservedCells: aString for: aCell
	
	SpreadsheetRegexMatcher cellCollectionRegex 
		matchesIn: aString do:  [ :each |
			]