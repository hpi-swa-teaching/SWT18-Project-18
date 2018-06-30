replace string
observedCellsFrom: aString for: aCell
	
	SpreadsheetRegexMatcher cellCollectionRegex 
		matchesIn: aString do:  [ :each |
			(self cellsFrom: aString) do: [].
			]