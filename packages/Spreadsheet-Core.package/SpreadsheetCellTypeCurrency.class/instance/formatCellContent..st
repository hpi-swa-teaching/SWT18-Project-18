as yet unclassified
formatCellContent: aText

	| numberAsString currency |
	numberAsString := (aText asNumber roundTo: 0.01) asString.
	((numberAsString findTokens: '\.') last size = 1) ifTrue: [
		numberAsString := numberAsString, '0'].
	currency := numberAsString, ' $'.
	
	^ currency