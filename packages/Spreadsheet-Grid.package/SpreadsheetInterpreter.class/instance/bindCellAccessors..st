binding
bindCellAccessors: aString

	^ self cellRegex
		matchesIn: aString
		do: [ :each | 
			(self cellFromString: each)
				ifNotNilDo: [ :cell |
					self observeCell: cell.
					environment bind: each asSymbol to: cell]]