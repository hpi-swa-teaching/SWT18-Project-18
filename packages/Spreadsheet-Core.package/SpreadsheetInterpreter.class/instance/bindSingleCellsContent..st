binding
bindSingleCellsContent: aString

	^ SpreadsheetRegexMatcher cellRegex 
		copy: aString
		translatingMatchesUsing: [ :each | 
			(self cellFromString: each)
				ifNil: [ each ]
				ifNotNilDo: [ :aCell |
					self observeCell: aCell.
					self simpleCellRegex copy: each replacingMatchesWith: aCell text]]