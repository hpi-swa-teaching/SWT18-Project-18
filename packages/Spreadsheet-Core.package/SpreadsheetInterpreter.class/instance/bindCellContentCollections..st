binding
bindCellContentCollections: aString

	^ SpreadsheetRegexMatcher cellCollectionRegex 
		copy: aString translatingMatchesUsing: [ :each |
			| collection |
			
			collection := self cellsFrom: each.
			collection do: [ :cell | self observeCell: cell ].
			
			self simpleCollectionRegex copy: each replacingMatchesWith: 
				(self cellContentsFromCollection: collection) asArray asString]