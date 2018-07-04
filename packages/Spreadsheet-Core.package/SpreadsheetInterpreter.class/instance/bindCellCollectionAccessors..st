binding
bindCellCollectionAccessors: aString

	^ SpreadsheetRegexMatcher cellCollectionAccessorRegex 
		copy: aString translatingMatchesUsing: [ :each |
			| string collection hash |
			
			string := (self simpleCollectionAccessorRegex matchesIn: each) first.
			collection := (self cellsFrom: string) asArray.
			collection do: [ :cell | self observeCell: cell ].
			hash := 'Cell_Collection_', collection identityHash printString.
			environment bind: hash asSymbol to: collection.
			(self simpleCollectionAccessorRegex copy: each replacingMatchesWith: hash )]