as yet unclassified
formatCellContent: aText

	| number currency |
	number := aText asNumber roundTo: 2 asFloat.
	currency := number asString, ' $'.
	
	^ currency