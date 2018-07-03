as yet unclassified
formatCellContent: aText

	| number percentage |
	number := aText asNumber roundTo: 2 asFloat.
	number := number/100.
	percentage := number asString, ' %'.
	
	^ percentage