binding
bindSingleCellsAccessor: aString

	^ SpreadsheetRegexMatcher cellAccessorRegex 
		copy: aString
		translatingMatchesUsing: [ :each | 
			(self cellFromString: each)
				ifNil: [ each ]
				ifNotNilDo: [ :cell |
					self observeCell: cell.
					environment bind: (self hashFor: cell) asSymbol to: cell.
					self simpleCellAccessorRegex copy: each replacingMatchesWith: (self hashFor: cell)]]