unbinding
unbindCellAccessors: aString

	^ self cellRegex
		matchesIn: aString
		do: [ :each | 
			(self cellFromString: each)
				ifNotNilDo: [ :cell |
					environment unbind: each asSymbol]]