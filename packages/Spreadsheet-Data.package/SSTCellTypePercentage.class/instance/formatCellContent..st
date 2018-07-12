as yet unclassified
formatCellContent: aText

	| number percentage numberAsString |
	number := aText asNumber.
	numberAsString := ((number*100) roundTo: 0.01) asString.
	((numberAsString findTokens: '\.') last size = 1) ifTrue: [
		numberAsString := numberAsString, '0'].
	
	percentage := numberAsString, '%'.
	
	^ percentage