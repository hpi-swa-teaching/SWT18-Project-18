as yet unclassified
formatCellContent: aText

	| numberAsString currency |
	numberAsString := (self typeRepresentation: aText) asString.
	((numberAsString findTokens: '\.') last size = 1) ifTrue: [
		numberAsString := numberAsString, '0'].
	currency := numberAsString, ' $'.
	
	^ currency